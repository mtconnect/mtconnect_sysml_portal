#!/usr/bin/env python3
"""Suggest the best IOF parent class for each MTConnect OWL class.

The IOF development closure (AboutIOFDev.rdf: core, biopharma, production planning, maintenance,
supply chain, product service system, certification, and the provisional ontologies) is loaded
from a local checkout, resolving imports through its XML catalogs. Each MTConnect SysML class, as
exported from the XMI by generate_owl.rb (out/mtconnect_classes.json, with its SysML superclasses and
definition), is classified by walking the IOF class hierarchy top-down: at every node a
TypeSafe Choice question picks the best direct subclass, or stops at the node when no subclass
fits. A beam search keeps the K most probable paths, scored by the geometric mean of the edge
probabilities, so an ambiguous early decision can be repaired deeper in the tree.

Two views are supported:
  information  root is iof:InformationContentEntity; what kind of information is the MTConnect class
  realist      root is bfo:Entity; what kind of real-world entity does the MTConnect class describe

Requires TYPESAFE_API_KEY in the environment for questions that are not already cached.
"""

from __future__ import annotations

import argparse
import asyncio
import csv
import functools
import glob
import hashlib
import json
import os
import re
import sys
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from xml.etree import ElementTree

import rdflib
from rdflib import URIRef
from rdflib.collection import Collection
from rdflib.namespace import OWL, RDF, RDFS, SKOS

HERE = Path(__file__).resolve().parent
PORTAL = HERE.parents[3]

IOF = 'https://spec.industrialontologies.org/ontology/construct/'
IOF_AV = 'https://spec.industrialontologies.org/ontology/annotation/'
OBO = 'http://purl.obolibrary.org/obo/'
MTC = 'https://model.mtconnect.org/ontology/construct/'
IAO_DEFINITION = URIRef(OBO + 'IAO_0000115')
BFO_ROLE = URIRef(OBO + 'BFO_0000023')
# Properties relating a bearer to its role: iof:hasRole and bfo:'bearer of'
ROLE_PROPERTIES = {URIRef(IOF + 'hasRole'), URIRef(OBO + 'BFO_0000196')}
CATALOG_NS = '{urn:oasis:names:tc:entity:xmlns:xml:catalog}'

VIEWS = {
    'information': {
        'root': IOF + 'InformationContentEntity',
        'framing': 'The MTConnect class is part of an information model. Its instances are information content '
                   'entities: data that describes, measures, identifies, or specifies something. Classify what '
                   'kind of information the MTConnect class is, not the thing it is about.',
    },
    'realist': {
        'root': OBO + 'BFO_0000001',
        'framing': 'The MTConnect class is part of an information model. Classify the real-world entity that '
                   'instances of the MTConnect class describe, measure, or are about (for example a machine, a '
                   'physical quality, a process, or a role), not the information itself.',
    },
}

# Names shown to the model in place of the MTConnect names, per view, where the MTConnect name is misleading.
# A renamed class's definition that starts with the old genus ('axis that ...') starts with the new one instead.
# Results are still keyed by the MTConnect name.
VIEW_NAMES = {
    'realist': {
        'AxisComponent': ('MotionSystem', 'motion system'),
        'Linear': ('LinearMotionSystem', 'linear motion system'),
        'Rotary': ('RotaryMotionSystem', 'rotary motion system'),
    },
}

INSTRUCTIONS = (
    'Choose the ontology class that is the best superclass for the MTConnect class described in the state, '
    'following the classification described in `view`. A correct superclass is one where every instance of the '
    'MTConnect class is also an instance of the option. Prefer the most specific option that is still correct. '
    'Choose the stop option when none of the more specific classes is correct.'
)

PREFIXES = {IOF: 'iof:', OBO: 'obo:', MTC: 'mtc:', 'https://www.omg.org/spec/Commons/': 'cmns:'}


def curie(iri: str) -> str:
    for ns, prefix in PREFIXES.items():
        if iri.startswith(ns):
            return prefix + iri[len(ns):]
    return iri


def clean(text: str | None, limit: int = 400) -> str:
    text = re.sub(r'\s+', ' ', text or '').strip()
    return text if len(text) <= limit else text[:limit - 1] + '…'


# ---------------------------------------------------------------------------------------------
# IOF


def load_iof_graph(ontology_dir: Path, cache_dir: Path) -> rdflib.Graph:
    """Load AboutIOFDev.rdf and its import closure, caching the merged graph as N-Triples."""
    about = ontology_dir / 'AboutIOFDev.rdf'
    files = sorted(glob.glob(str(ontology_dir / '**' / '*.rdf'), recursive=True))
    stamp = hashlib.sha256('\n'.join(f'{f}:{os.path.getmtime(f)}' for f in files).encode()).hexdigest()[:16]
    cached = cache_dir / f'iof-{stamp}.nt'
    graph = rdflib.Graph()
    if cached.exists():
        graph.parse(cached, format='nt')
        return graph

    catalog: dict[str, str] = {}
    for path in glob.glob(str(ontology_dir / '**' / 'catalog-v001.xml'), recursive=True):
        base = os.path.dirname(path)
        for uri in ElementTree.parse(path).getroot().iter(CATALOG_NS + 'uri'):
            target = os.path.normpath(os.path.join(base, uri.get('uri')))
            if os.path.exists(target):
                catalog.setdefault(uri.get('name'), target)

    seen: set[str] = set()

    def load(ref: str) -> None:
        path = ref if os.path.exists(ref) else catalog.get(ref) or catalog.get(ref.rstrip('/') + '/')
        if not path:
            print(f'warning: cannot resolve import {ref}', file=sys.stderr)
            return
        if path in seen:
            return
        seen.add(path)
        sub = rdflib.Graph()
        sub.parse(path, format='xml')
        graph.__iadd__(sub)
        for imported in sub.objects(None, OWL.imports):
            load(str(imported))

    load(str(about))
    print(f'Loaded {len(seen)} ontologies ({len(graph)} triples) from {about}', file=sys.stderr)
    cache_dir.mkdir(parents=True, exist_ok=True)
    graph.serialize(cached, format='nt', encoding='utf-8')
    return graph


def literal(graph: rdflib.Graph, subject: URIRef, *predicates: URIRef) -> str | None:
    """First English (or untagged) literal for the predicates, in order of preference."""
    for predicate in predicates:
        values = list(graph.objects(subject, predicate))
        for value in values:
            if getattr(value, 'language', None) in (None, 'en', 'en-US'):
                return str(value)
        if values:
            return str(values[0])
    return None


def role_defined_classes(graph: rdflib.Graph, classes: set[URIRef]) -> set[URIRef]:
    """Classes whose equivalent class requires bearing a role, such as piece of equipment, defined as
    (engineered system or material artifact) and (has role some equipment role)."""
    roles, stack = {BFO_ROLE}, [BFO_ROLE]
    while stack:
        for sub in graph.subjects(RDFS.subClassOf, stack.pop()):
            if isinstance(sub, URIRef) and sub not in roles:
                roles.add(sub)
                stack.append(sub)

    def is_role(filler) -> bool:
        if isinstance(filler, URIRef):
            # Some role classes reach bfo:role only through equivalences, so also accept the role naming convention
            label = str(graph.value(filler, RDFS.label) or '')
            return filler in roles or label.lower().endswith(' role') or str(filler).endswith('Role')
        union = graph.value(filler, OWL.unionOf)
        return union is not None and all(is_role(m) for m in Collection(graph, union))

    def requires_role(expression) -> bool:
        if graph.value(expression, OWL.onProperty) in ROLE_PROPERTIES:
            return is_role(graph.value(expression, OWL.someValuesFrom))
        members = graph.value(expression, OWL.intersectionOf)
        return members is not None and any(requires_role(m) for m in Collection(graph, members))

    return {s for s in classes if any(requires_role(e) for e in graph.objects(s, OWL.equivalentClass))}


def literals(graph: rdflib.Graph, subject: URIRef, predicate: URIRef) -> str | None:
    """All English (or untagged) literals for the predicate, joined, or None if there are none."""
    values = sorted(str(v) for v in graph.objects(subject, predicate)
                    if getattr(v, 'language', None) in (None, 'en', 'en-US'))
    return '; '.join(values) or None


@dataclass(eq=False)
class Taxonomy:
    labels: dict[str, str]
    definitions: dict[str, str]
    children: dict[str, list[str]]
    notes: dict[str, str] = field(default_factory=dict)
    examples: dict[str, str] = field(default_factory=dict)
    descendants: dict[str, int] = field(default_factory=dict)
    roles: set[str] = field(default_factory=set)

    @classmethod
    def from_graph(cls, graph: rdflib.Graph, exclude_roles: bool = True) -> 'Taxonomy':
        classes = {s for s in graph.subjects(RDF.type, OWL.Class) if isinstance(s, URIRef)}
        deprecated = {s for s in classes if str(graph.value(s, OWL.deprecated) or '').lower() == 'true'}
        classes -= deprecated

        parents: dict[URIRef, set[URIRef]] = defaultdict(set)
        for s in classes:
            for o in graph.objects(s, RDFS.subClassOf):
                if isinstance(o, URIRef):
                    parents[s].add(o)
            # Defined classes: the named classes in an equivalent intersection are superclasses
            for equivalent in graph.objects(s, OWL.equivalentClass):
                for members in graph.objects(equivalent, OWL.intersectionOf):
                    parents[s].update(o for o in Collection(graph, members) if isinstance(o, URIRef))

        children: dict[str, list[str]] = defaultdict(list)
        for s, ps in parents.items():
            for p in ps - {s, OWL.Thing}:
                if p in classes:
                    children[str(p)].append(str(s))

        labels = {str(s): literal(graph, s, RDFS.label, SKOS.prefLabel) or str(s).rsplit('/', 1)[-1] for s in classes}
        definitions = {str(s): clean(literal(graph, s, URIRef(IOF_AV + 'naturalLanguageDefinition'), SKOS.definition,
                                             IAO_DEFINITION)) for s in classes}
        roles = {str(s) for s in role_defined_classes(graph, classes)} if exclude_roles else set()
        if roles:
            # Role-defined classes (UFO roles) are not asserted as a primary classification; membership is inferred
            # from bearing the role. Their subclasses that are not role-defined take their place.
            def lift(nodes: list[str], seen: frozenset = frozenset()) -> list[str]:
                out = []
                for node in nodes:
                    if node not in roles:
                        out.append(node)
                    elif node not in seen:
                        out += lift(children.get(node, []), seen | {node})
                return out

            children = defaultdict(list, {p: lift(cs) for p, cs in children.items() if p not in roles})
        for key in children:
            children[key] = sorted(set(children[key]), key=lambda c: labels[c].lower())
        notes = {str(s): clean(n, 1000) for s in classes if (n := literals(graph, s, URIRef(IOF_AV + 'explanatoryNote')))}
        examples = {str(s): clean(e, 300) for s in classes if (e := literals(graph, s, SKOS.example))}
        taxonomy = cls(labels, definitions, dict(children), notes, examples)
        taxonomy.roles = roles
        taxonomy.descendants = {c: len(taxonomy.below(c)) for c in labels}
        return taxonomy

    def below(self, iri: str) -> set[str]:
        out, stack = set(), [iri]
        while stack:
            for child in self.children.get(stack.pop(), []):
                if child not in out:
                    out.add(child)
                    stack.append(child)
        return out

    @functools.cache
    def option(self, iri: str) -> dict:
        """The description of a class as a Choice option: label, definition, explanatory note, examples, and
        example subclasses."""
        description = {'class': self.labels[iri], 'definition': self.definitions[iri] or '(no definition)'}
        if iri in self.notes:
            description['explanatory note'] = self.notes[iri]
        if iri in self.examples:
            description['examples'] = self.examples[iri]
        below = {c for c in self.below(iri) if self.labels[c].lower() != self.labels[iri].lower()}
        examples = sorted(below, key=lambda c: (-self.descendants.get(c, 0), self.labels[c]))[:8]
        if examples:
            description['includes subclasses such as'] = ', '.join(self.labels[c] for c in examples)
        return description


# ---------------------------------------------------------------------------------------------
# MTConnect


@dataclass
class MTConnectClass:
    iri: str
    name: str
    label: str
    definition: str
    package: str
    ancestors: list[dict]

    def state(self, view: str) -> dict:
        names = VIEW_NAMES.get(view, {})
        name, label = names.get(self.name, (self.name, self.label))
        definition = self.definition or '(no definition)'
        if self.name in names and self.ancestors:
            old = names.get(self.ancestors[0]['name'])
            if old and definition.startswith('axis '):
                definition = old[1] + definition[len('axis'):]
        ancestors = [{**a, 'name': names.get(a['name'], (a['name'],))[0]} for a in self.ancestors]
        return {
            'view': VIEWS[view]['framing'],
            'mtconnect class': {
                'name': name,
                'label': label,
                'definition': definition,
                'package': self.package,
                'mtconnect superclasses, nearest first': ancestors or 'none',
            },
        }


def load_mtconnect(classes_file: Path) -> list[MTConnectClass]:
    """Load the SysML classes exported from the XMI by generate_owl.rb (classifier/out/mtconnect_classes.json).

    The superclasses are the SysML generalizations, not the superclasses in the generated ontology, which are
    what this classifier is meant to correct.
    """
    if not classes_file.exists():
        sys.exit(f'{classes_file} does not exist; run `ruby src/generate.rb -v <version> owl` from Format/ first')
    records = {c['name']: c for c in json.loads(classes_file.read_text())['classes']}

    def ancestors(record: dict) -> list[dict]:
        out, queue, seen = [], list(record['parents']), {record['name']}
        while queue:
            name = queue.pop(0)
            if name in seen:
                continue
            seen.add(name)
            parent = records.get(name)
            out.append({'name': name, 'definition': clean(parent and parent['definition'], 200) or '(no definition)'})
            queue += parent['parents'] if parent else []
        return out

    return [MTConnectClass(MTC + r['name'], r['name'], r['label'], clean(r['definition']), r['package'], ancestors(r))
            for r in sorted(records.values(), key=lambda r: r['name'])]


# ---------------------------------------------------------------------------------------------
# Classification


STOP = 'stop'


class Chooser:
    """Asks one direct-subclass Choice question, with a persistent JSON cache of the distributions."""

    def __init__(self, taxonomy: Taxonomy, model: str, cache_path: Path, dry_run: bool, concurrency: int,
                 verbose: bool = False):
        self.taxonomy, self.model, self.cache_path, self.dry_run = taxonomy, model, cache_path, dry_run
        self.verbose = verbose
        self.cache = json.loads(cache_path.read_text()) if cache_path.exists() else {}
        self.semaphore = asyncio.Semaphore(concurrency)
        self.client = None
        self.requests = self.cached = self.tokens = 0

    def connect(self):
        """Create the client on the first uncached request, so a fully cached run needs no API key."""
        if self.client is None:
            from typesafe_sdk import AsyncTypeSafeClient, RetryPolicy
            if not os.environ.get('TYPESAFE_API_KEY'):
                sys.exit('TYPESAFE_API_KEY is not set and some questions are not cached '
                         '(use --dry-run to check the setup without API calls)')
            self.client = AsyncTypeSafeClient(model=self.model, retry=RetryPolicy(max_retries=6, backoff_initial=1.0,
                                                                                  backoff_max=30.0, timeout=120.0))
        return self.client

    def question(self, node: str, is_root: bool) -> tuple[dict, dict[str, str]]:
        keys, criteria = {}, {}
        for child in self.taxonomy.children.get(node, []):
            key = self.taxonomy.labels[child]
            if key in keys or key == STOP:
                key = f'{key} ({curie(child)})'
            keys[key] = child
            criteria[key] = self.taxonomy.option(child)
        if not is_root:
            criteria[STOP] = {'class': f'stop at {self.taxonomy.labels[node]}',
                              'definition': f'None of the other options is a correct superclass; the best superclass '
                                            f'is {self.taxonomy.labels[node]} itself.'}
        return {'instructions': INSTRUCTIONS, 'criteria': criteria}, keys

    async def choose(self, state: dict, node: str, is_root: bool) -> dict[str, float]:
        """Probability of each direct subclass IRI of node (and STOP)."""
        question, keys = self.question(node, is_root)
        if len(question['criteria']) == 1:
            return {next(iter(keys.values()), STOP): 1.0}
        digest = hashlib.sha256(json.dumps([self.model, state, question], sort_keys=True).encode()).hexdigest()
        answer = None
        if digest in self.cache:
            self.cached += 1
            source = 'cached'
            probabilities = self.cache[digest]
        elif self.dry_run:
            self.requests += 1
            self.tokens += len(json.dumps([state, question])) // 4
            source = 'dry run, not sent'
            probabilities = {key: 1.0 / len(question['criteria']) for key in question['criteria']}
        else:
            from typesafe_sdk import Choice
            async with self.semaphore:
                response = await self.connect().system_one(state=state, questions={'parent': Choice(**question)})
            self.requests += 1
            self.tokens += getattr(response.usage, 'input_tokens', 0) or 0
            source = f'sent to {response.model}'
            answer = response.choices['parent']
            probabilities = dict(answer.probabilities)
            self.cache[digest] = probabilities
        if self.verbose:
            self.log(state, node, question, probabilities, answer, source)
        return {keys.get(key, STOP): p for key, p in probabilities.items()}

    def log(self, state: dict, node: str, question: dict, probabilities: dict[str, float], answer, source: str) -> None:
        """Print one request and its answer as a single block, so concurrent requests do not interleave."""
        ranked = sorted(probabilities.items(), key=lambda item: item[1], reverse=True)
        lines = [
            '=' * 100,
            f"{state['mtconnect class']['name']} at {self.taxonomy.labels[node]} ({curie(node)}) [{source}]",
            '--- state',
            json.dumps(state, indent=2, ensure_ascii=False),
            '--- question',
            json.dumps(question, indent=2, ensure_ascii=False),
            '--- answer',
        ]
        if answer is not None:
            lines.append(f'choice: {answer.choice}  confidence: {answer.confidence:.4f}')
        lines += [f'  {p:.4f}  {key}' for key, p in ranked]
        print('\n'.join(lines), file=sys.stderr, flush=True)

    def save(self) -> None:
        if not self.dry_run:
            self.cache_path.write_text(json.dumps(self.cache))

    async def close(self) -> None:
        if self.client:
            await self.client.aclose()


async def beam_search(chooser: Chooser, state: dict, root: str, width: int, max_depth: int = 20) -> dict:
    """Beam search from root. A path ends when STOP is chosen or a leaf is reached."""
    beam = [{'path': [root], 'log': 0.0, 'decisions': 0, 'score': 1.0, 'done': False, 'edges': []}]
    for _ in range(max_depth):
        open_ = [c for c in beam if not c['done']]
        if not open_:
            break
        distributions = await asyncio.gather(*(chooser.choose(state, c['path'][-1], len(c['path']) == 1) for c in open_))
        expanded = [c for c in beam if c['done']]
        for candidate, probabilities in zip(open_, distributions):
            decision = len(probabilities) > 1
            for iri, p in probabilities.items():
                log = candidate['log'] + (_log(p) if decision else 0.0)
                decisions = candidate['decisions'] + decision
                stop = iri == STOP
                path = candidate['path'] if stop else candidate['path'] + [iri]
                expanded.append({
                    'path': path, 'log': log, 'decisions': decisions,
                    'score': _exp(log / decisions) if decisions else 1.0,
                    'done': stop or not chooser.taxonomy.children.get(iri),
                    'edges': candidate['edges'] + [round(p, 4)],
                })
        beam = sorted(expanded, key=lambda c: c['score'], reverse=True)[:width]
    return {'beam': sorted(beam, key=lambda c: c['score'], reverse=True)}


def _log(p: float) -> float:
    import math
    return math.log(max(p, 1e-9))


def _exp(x: float) -> float:
    import math
    return math.exp(x)


# ---------------------------------------------------------------------------------------------
# CLI


def summarize(taxonomy: Taxonomy, mtc: MTConnectClass, view: str, result: dict) -> dict:
    beam = result['beam']
    best = beam[0]
    runner = next((c for c in beam[1:] if c['path'][-1] != best['path'][-1]), None)
    parent = best['path'][-1]
    return {
        'mtconnect_class': mtc.name,
        'package': mtc.package,
        'mtconnect_parent': mtc.ancestors[0]['name'] if mtc.ancestors else '',
        'view': view,
        'iof_parent': curie(parent),
        'iof_parent_iri': parent,
        'iof_parent_label': taxonomy.labels[parent],
        'score': round(best['score'], 4),
        'weakest_edge': min(best['edges'], default=1.0),
        'separation': round(best['score'] / runner['score'], 3) if runner else None,
        'runner_up': curie(runner['path'][-1]) if runner else '',
        'runner_up_iri': runner['path'][-1] if runner else '',
        'runner_up_label': taxonomy.labels[runner['path'][-1]] if runner else '',
        'path': ' > '.join(taxonomy.labels[c] for c in best['path']),
    }


async def run(args: argparse.Namespace) -> None:
    args.out.mkdir(parents=True, exist_ok=True)
    taxonomy = Taxonomy.from_graph(load_iof_graph(args.ontology_dir, args.out / 'cache'), not args.include_roles)
    if taxonomy.roles:
        print(f'Excluded {len(taxonomy.roles)} role-defined IOF classes as parents', file=sys.stderr)
    classes = load_mtconnect(args.classes_file)
    if args.classes:
        wanted = set(args.classes)
        classes = [c for c in classes if c.name in wanted or c.package in wanted]
    if args.limit:
        classes = classes[:args.limit]
    print(f'{len(taxonomy.labels)} IOF classes; classifying {len(classes)} MTConnect classes, views {args.view}',
          file=sys.stderr)

    chooser = Chooser(taxonomy, args.model, args.out / 'cache' / 'answers.json', args.dry_run, args.concurrency,
                      args.verbose)
    rows, details = [], []
    try:
        for view in args.view:
            root = VIEWS[view]['root']

            async def classify(mtc: MTConnectClass) -> None:
                result = await beam_search(chooser, mtc.state(view), root, args.beam)
                rows.append(summarize(taxonomy, mtc, view, result))
                details.append({'mtconnect_class': mtc.name, 'view': view, 'beam': [
                    {'score': round(c['score'], 4), 'edges': c['edges'], 'path': [curie(p) for p in c['path']]}
                    for c in result['beam']]})
                if len(rows) % 25 == 0:
                    chooser.save()
                    print(f'  {len(rows)} classified', file=sys.stderr)

            await asyncio.gather(*(classify(c) for c in classes))
    finally:
        chooser.save()
        await chooser.close()

    suffix = '-dry-run' if args.dry_run else ''
    csv_path, json_path = args.out / f'iof_parents{suffix}.csv', args.out / f'iof_parents{suffix}.json'
    if (args.classes or args.limit) and csv_path.exists() and json_path.exists():
        # A partial run replaces its classes in the existing results instead of overwriting them
        done = {(r['view'], r['mtconnect_class']) for r in rows}
        with open(csv_path, newline='') as f:
            rows += [r for r in csv.DictReader(f) if (r['view'], r['mtconnect_class']) not in done]
        details += [d for d in json.loads(json_path.read_text()) if (d['view'], d['mtconnect_class']) not in done]
    rows.sort(key=lambda r: (r['view'], r['package'], r['mtconnect_class']))
    with open(csv_path, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()) if rows else ['mtconnect_class'])
        writer.writeheader()
        writer.writerows(rows)
    json_path.write_text(json.dumps(
        sorted(details, key=lambda d: (d['view'], d['mtconnect_class'])), indent=1))
    verb = 'would send' if args.dry_run else 'sent'
    print(f'{verb} {chooser.requests} requests (~{chooser.tokens} input tokens), {chooser.cached} from cache; '
          f'wrote {args.out}/iof_parents{suffix}.csv', file=sys.stderr)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--ontology-dir', type=Path, default=PORTAL / 'cache' / 'ontology',
                        help='IOF ontology checkout containing AboutIOFDev.rdf')
    parser.add_argument('--classes-file', type=Path, default=HERE / 'out' / 'mtconnect_classes.json',
                        help='SysML classes exported from the XMI by generate_owl.rb')
    parser.add_argument('--out', type=Path, default=HERE / 'out', help='Output and cache directory')
    parser.add_argument('--view', nargs='+', choices=sorted(VIEWS), default=['information', 'realist'])
    parser.add_argument('--classes', nargs='+', help='Only these MTConnect class names or packages')
    parser.add_argument('--limit', type=int, help='Only the first N classes')
    parser.add_argument('--include-roles', action='store_true',
                        help='Offer role-defined classes (such as piece of equipment) as parents; excluded by default')
    parser.add_argument('--beam', type=int, default=3, help='Beam width')
    parser.add_argument('--model', default=os.environ.get('TYPESAFE_DEFAULT_MODEL', 'jev-1.13.0'))
    parser.add_argument('--concurrency', type=int, default=32)
    parser.add_argument('--dry-run', action='store_true', help='Walk the tree with uniform probabilities; no API calls')
    parser.add_argument('-v', '--verbose', action='store_true',
                        help='Print every question (state and options) and its answer to stderr')
    args = parser.parse_args()
    asyncio.run(run(args))


if __name__ == '__main__':
    main()

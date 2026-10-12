# IOF parent classifier

Suggests the best IOF parent class for every MTConnect class.

The MTConnect classes come from the SysML model, not the generated Turtle files. `generate_owl.rb` exports each class it
generates from the XMI to `out/mtconnect_classes.json`, with its OWL name, label, definition, package, and SysML
superclasses. The superclasses in the generated ontology are what the classifier is meant to correct, so they are not
used as input.

The candidate classes are the full IOF development closure, `cache/ontology/AboutIOFDev.rdf`. It includes the
core, biopharma, production planning, maintenance, supply chain, product service system, and certification ontologies,
including the provisional ones, plus BFO, Commons, and STATO. Imports are resolved locally through the catalogs.

Each MTConnect class is classified top-down with a TypeSafe `Choice` question per IOF class. The question picks the
best direct subclass, or stops at the current class when none of the subclasses fits. Each subclass option is described
by its label, definition, `iof-av:explanatoryNote` and `skos:example` (when present), and a few of its own subclasses.
The candidates come from
`rdfs:subClassOf` and from the named classes in `owl:equivalentClass` intersections. A beam search (default width 3)
keeps the most probable paths, scored by the geometric mean of the edge probabilities.

There are two views:

| View | Root | Question |
| --- | --- | --- |
| `information` | `iof:InformationContentEntity` | What kind of information is the MTConnect class? |
| `realist` | `bfo:Entity` | What kind of real-world entity does the MTConnect class describe? |

## Running

```bash
pip install -r requirements.txt
export TYPESAFE_API_KEY=...            # https://console.typesafe.ai/
ruby src/generate.rb -v 2.8 owl        # from Format/: exports out/mtconnect_classes.json from the XMI
python3 iof_classifier.py --dry-run    # check the setup and the request count without API calls
python3 iof_classifier.py              # all classes, both views
python3 iof_classifier.py --view information --classes ComponentTypes Temperature
```

`--classes` accepts MTConnect class names or package names (for example `SampleTypes`). A run limited with
`--classes` or `--limit` replaces only those classes in the existing results.

`VIEW_NAMES` in `iof_classifier.py` shows the model a different name for a class in one view, where the MTConnect
name is misleading. In the realist view, Axis, Linear, and Rotary are presented as motion system, linear motion system,
and rotary motion system. The results are still keyed by the MTConnect name.

The merged IOF graph and every answer are cached in `out/cache/`, so reruns only send questions that changed.

## Output

`out/iof_parents.csv` has one row per class and view:

- `iof_parent`: the suggested parent.
- `score`: the geometric mean of the edge probabilities on the best path.
- `weakest_edge`: the lowest edge probability on the best path. A low value means one of the decisions was uncertain.
- `separation`: the best score divided by the score of the best path that ends at a different class. A value near 1
  is ambiguous.
- `runner_up`: the parent at the end of that other path.
- `path`: the full path from the root.

`out/iof_parents.json` has the complete beams with the edge probabilities, for review.

Review the suggestions before using them in the generator. Look first at the rows with low `separation` or a low
`weakest_edge`.

---
title: GitHub Actions Workflow
summary: The deploy.yml jobs, environment, secrets, and the artifact contract between them.
tags: [ci-cd, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# GitHub Actions Workflow

`.github/workflows/deploy.yml` is the single workflow for the repository. It has three jobs.

## `build-model`

```yaml
build-model:
  runs-on: ubuntu-latest
  defaults:
    run:
      working-directory: ./Format
  steps:
    - uses: actions/checkout@v6
    - uses: ruby/setup-ruby@v1
      with:
        working-directory: ./Format
        ruby-version: "3.4"
        bundler-cache: true
        cache-version: 0
    - run: ./build
    - uses: actions/upload-artifact@v4
      with:
        name: model-docs
        path: ./build
```

- **Ruby 3.4** with `bundler-cache: true`. The bundler cache is keyed on `Format/Gemfile.lock` and persisted across runs.
- The script `Format/build` reads `build.yml`, iterates `versions_for_build`, and runs `ruby src/generate.rb -v <version> ghpages` per version.
- The whole `Format/build/` tree (`Version<X.Y>/` markdown subtrees) is uploaded as the `model-docs` artifact.

## `build-site`

```yaml
build-site:
  runs-on: ubuntu-latest
  needs: build-model
  defaults:
    run:
      working-directory: ./docs
  steps:
    - uses: actions/checkout@v6
    - uses: actions/download-artifact@v4
      with:
        name: model-docs
        path: ./build
    - uses: ruby/setup-ruby@v1
      with:
        working-directory: ./docs
        ruby-version: "3.4"
        bundler-cache: true
        cache-version: 0
    - run: ./build
      env:
        JEKYLL_ENV: production
    - uses: actions/upload-artifact@v4
      with:
        name: deploy
        path: ./deploy
```

- Downloads `model-docs` from the previous job into `./build`.
- Sets `JEKYLL_ENV: production` so the Just-the-Docs theme strips development affordances.
- `docs/build` runs Jekyll once per version and once for the root landing page (see [Jekyll Build](./jekyll-build.md)).
- The whole `deploy/` tree is uploaded as the `deploy` artifact.

## `deploy`

```yaml
deploy:
  environment:
    name: github-pages
    url: ${{ steps.deployment.outputs.page_url }}
  runs-on: ubuntu-latest
  needs: build-site
  steps:
    - uses: actions/checkout@v6
    - uses: actions/download-artifact@v4
      with:
        name: deploy
        path: ./deploy
    - uses: ruby/setup-ruby@v1
      with:
        ruby-version: "3.4"
    - uses: webfactory/ssh-agent@v0.5.4
      with:
        ssh-private-key: ${{ secrets.SSH_PRIVATE_KEY }}
    - id: deployment
      run: |
        ssh-keyscan projects.mtconnect.org >> ~/.ssh/known_hosts
        ./deploy_pages
```

- Bound to the `github-pages` GitHub environment (gates required reviewers if configured).
- Loads `SSH_PRIVATE_KEY` into the SSH agent so the next step's `scp` / `ssh` to `deploy@projects.mtconnect.org` succeed.
- Adds the server's host key to `known_hosts` non-interactively before any SSH connection (avoids prompts).
- Runs `./deploy_pages` (see [Deploy](./deploy.md)).

## Secrets

| Secret | Purpose |
|---|---|
| `SSH_PRIVATE_KEY` | Key authorized as `deploy@projects.mtconnect.org` |

Optionally:

| Env / secret | Purpose |
|---|---|
| `COMMENT_URL` | Overrides the comment URL written into per-version `_config_version.yml`. Defaults to `https://projects.mtconnect.org` if unset. |

## Artifact contract

| Artifact | Producer | Consumer | Contents |
|---|---|---|---|
| `model-docs` | `build-model` | `build-site` | `Format/build/Version<X.Y>/` — one tree per version |
| `deploy` | `build-site` | `deploy` | `deploy/Version<X.Y>/` + `deploy/` root |

Keeping these as named artifacts (rather than cache or commit) lets each job be re-run independently from the Actions UI when debugging.

## Open items

- **PR validation.** The workflow does not currently fire on pull requests. A dry-run build (no deploy) on PRs would catch broken markdown or generator errors before merge. Not yet scheduled.

## Related

- [Overview](./overview.md)
- [Jekyll Build](./jekyll-build.md)
- [Deploy](./deploy.md)

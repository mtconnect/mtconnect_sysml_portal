---
title: Deploy
summary: The deploy_pages script — tar, scp to projects.mtconnect.org, atomic swap of the document root, and refresh of the latest/ and development/ symlinks.
tags: [ci-cd, reference, active]
source: manual
created: 2026-05-27
updated: 2026-05-27
---

# Deploy

`deploy_pages` (Ruby) is the final step of the workflow. It runs in the `deploy` job after the Jekyll build, with `SSH_PRIVATE_KEY` loaded into the SSH agent. The published site lives under `/opt/redmine/model/root/` on `projects.mtconnect.org`.

## What it does

```
1. Read build.yml to enumerate the versions to publish
2. tar -czf deploy.tgz -C deploy <files>
3. scp deploy.tgz deploy@projects.mtconnect.org:~
4. ssh deploy@projects.mtconnect.org:
     cd /opt/redmine/model/root
     rm -rf <files>
     tar -xzf ~/deploy.tgz
     rm ~/deploy.tgz
5. ssh deploy@projects.mtconnect.org:
     cd /opt/redmine/model/root
     ln -fs /opt/redmine/model/root/Version<production>  latest
     ln -fs /opt/redmine/model/root/Version<development> development
```

The `<files>` list is built dynamically from `build.yml`:

```ruby
files = ['404.html', 'index.html', 'assets', 'figures',
         'robots.txt', 'sitemap.xml']
files += config['build'].map { |v| "Version#{v}" }
```

So every configured `VersionX.Y/` plus the shared root assets are deployed atomically.

## Atomicity

The deploy is not strictly atomic, but it minimizes the window in which the document root is partially populated:

1. `tar -xzf` re-creates the directories under the already-empty document root.
2. Each `VersionX.Y/` is independent — a partial unpack still leaves earlier versions consistent.
3. The `ln -fs` step at the end is single-syscall and updates each symlink atomically.

A future improvement would be to unpack the new tree under a sibling directory and rename it into place; that is not currently the case.

## Symlink refresh

After the unpack:

```
/opt/redmine/model/root/latest      → /opt/redmine/model/root/Version<production>
/opt/redmine/model/root/development → /opt/redmine/model/root/Version<development>
```

`production:` and `development:` come from `build.yml`. Changing either value is a one-line PR — the next merge to `main` re-deploys and the symlinks are updated to match.

## Failure handling

```ruby
rescue => e
  puts "Deployment failed: #{e.message}"
  exit(1)
ensure
  FileUtils.rm_f('deploy.tgz')
end
```

On failure:

- The script exits non-zero, which fails the `deploy` job.
- The local `deploy.tgz` is removed in `ensure`. The remote archive may remain — operations may need to clean up `~/deploy.tgz` on `projects.mtconnect.org` if a deploy aborted mid-flight.

## URLs

| URL | Resolves to |
|---|---|
| `https://model.mtconnect.org/` | `/opt/redmine/model/root/index.html` |
| `https://model.mtconnect.org/latest/` | `Version<production>` (currently 2.7) |
| `https://model.mtconnect.org/development/` | `Version<development>` (currently 2.8) |
| `https://model.mtconnect.org/Version2.7/` | `Version2.7` |

## Related

- [Workflow](./workflow.md)
- [Jekyll Build](./jekyll-build.md)
- [Versioning](../portal/versioning.md)

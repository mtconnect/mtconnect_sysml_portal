# MTConnect SysML Portal Viewer

## Overview
The MTConnect SysML Portal Viewer is a web-based tool for exploring and visualizing MTConnect system models defined in SysML (Systems Modeling Language).

## Features
- Interactive SysML model visualization
- Hierarchical component browsing
- Relationship mapping and analysis
- Integration with MTConnect standards

## Installation

The portal uses a ruby transformer to convert the SysML model into markdown files suitable for Jekyll static site generation. The build.yml 
file prescribes which versions of the model are built. Version links for production and development will be created based on the relative values:

```
# Which version will be built and deployed
build:
  - 2.0
  - 2.1
  - 2.2
  - 2.3
  - 2.4
  - 2.5
  - 2.6
  - 2.7

# Creates symbolic links for the version to redirect
development: 2.7
production: 2.7
```

Versions correspond to the VersionX.Y directory in the root as well as the build and deploy directories. 

## Building

use the build scripts in the `Format` and the `docs` directories.

## CI/CD

When changes are pushed to the repository, a GitHub Actions workflow is triggered to build and deploy the documentation site. The workflow includes steps for installing dependencies, running the transformer, building the Jekyll site, and deploying it to GitHub Pages.

## Support
For issues or questions, contact the development team or visit the project repository.
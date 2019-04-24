# CNCF Branding

This repo houses the assets used to build https://branding.cncf.io.

The site is built using the [Hugo](https://gohugo.io) static site generator.

## How the site works

All project information is in the [`data/projects.yaml`](./data/projects.yaml) file. The [`generate-pages.rb`](./scripts/generate-pages.rb) script creates pages for each of the included projects.

To update project information, update the `projects.yaml` file and submit a pull request to this repo.

## Site publishing

The site is automatically published via [Netlify](https://netlify.com) when changes are pushed to `master`.

## Run the site locally

To run the site locally, make sure you have the "extended" version of Hugo and [Yarn](https://yarnpkg.com) installed, then:

```bash
make assets
make serve
```

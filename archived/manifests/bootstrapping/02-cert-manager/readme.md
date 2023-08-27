# Deploying Cert-Manager

Update the relevant files and references as given in the README.md at the root of this repository in the `### Configuration Updates` section.

Once done, run the following from within this folder.

```bash
kustomize build --enable-alpha-plugins | kubectl apply -f -
```

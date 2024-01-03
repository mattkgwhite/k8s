# Deploying ArgoCD

Update the relevant files and references as given in the README.md at the root of this repository in the `### Configuration Updates` section.

Once done, run the following from within this folder.

```bash
kustomize build --enable-alpha-plugins | kubectl apply -f -
```

## Updating Argocd Password

After running the above, next is to update the `argocd-initial-admin-secret` using the following command listed in this section:
`https://github.com/argoproj/argo-cd/blob/master/docs/faq.md#i-forgot-the-admin-password-how-do-i-reset-it`

Full Document Reference

```html
https://github.com/argoproj/argo-cd/blob/master/docs/faq.md
```
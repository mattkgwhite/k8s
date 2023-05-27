# ArgoCD Vault Replacer

Reference Link:
https://github.com/crumbhole/argocd-vault-replacer

Kubernetes Auth method needs to be enabled within Vault itself. `Access > Auth Methods > Enable new method > select *Kubernetes* > Adjust settings as required in **Method Options** > Enable Method

```
vault write auth/kubernetes/role/argocd \
        bound_service_account_names=argocd \         bound_service_account_namespaces=argocd \
        policies=argocd \
        ttl=1h
```
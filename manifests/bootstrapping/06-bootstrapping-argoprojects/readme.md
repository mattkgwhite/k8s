# Letting ArgoCD Manage the bootstrapping services

After the initial deployment of everything, we can have ArgoCD manage the updates for the bootstrapped services, as well as itself by running the following command:

```bash
kubectl apply -k 
```

This will create the relevant Argo Applications on ArgoCD's dashboard that can be used to now manage these applications.
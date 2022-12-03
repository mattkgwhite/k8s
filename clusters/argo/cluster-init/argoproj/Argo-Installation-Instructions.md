# Chart within a chart

Need to install Helm on WSL etc first before proceeding further.

CD into argoCD location: 

`helm dep up` on initial setup.

`helm template test ./ -f values.yaml`

`helm install argocd ./ -n argocd -f values.yaml`

Terminal:

`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d` - Default Password for Argo Admin User

`kubectl port-forward argocd-server-797876cdb-vgftn 8080:8080 -n 
argocd` - Port forward Argo to access admin control panel as no ingress set yet.

# Logged In to admin

add Repository using HTTPS: https://github.com/krangence/k8s.git
    - just specify `Git` & `HTTPS URL`

Settings > Clusters - Renamed `Default` to suit

Manage Applications:

New App for argocd & applicationset
    - these options were auto populated after add Repository information and Cluster Information in above steps.

# Cluster-Apps & Cluster-Core

Following needs to be run from the **Cluster-Apps** & **Cluster-Core** folders.

`kubectl apply -f application-set.yaml -n argocd`
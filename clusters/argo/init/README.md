# Chart within a chart

Need to install Helm on WSL etc first before proceeding further.

CD into argoCD location: 

`helm dep up` on initial setup.

`helm template test ./ -f values.yaml`

`helm install argocd ./ -n argocd -f values.yaml`
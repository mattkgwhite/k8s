# Deploying Secrets

Update the relevant files and references as given in the README.md at the root of this repository in the `### Configuration Updates` section.

Once done, run the following from within this folder.

```shell
export domain=mydomain.tld
export ip=0.0.0.0/32
export hcloudsecret=""

kubectl create namespace 1passwordconnect
kubectl create secret generic 1passwordconnect --namespace 1passwordconnect --from-literal 1password-credentials.json=$(cat bootstrap/1password-credentials.json | base64 -w 0 )

kubectl create namespace external-secrets
kubectl create secret generic 1passwordconnect --namespace external-secrets --from-file=token=bootstrap/1password-token.secret 

```

```bash
kustomize build --enable-alpha-plugins | kubectl apply -f -
```

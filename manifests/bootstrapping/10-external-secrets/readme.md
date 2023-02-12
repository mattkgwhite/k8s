# Deploying External Secrets with Digital Ocean

If you are going to be using Cert-Manager for certificate management, and AWS Route53 for DNS01 authentication (recommended), you'll need to copy the `secret-example.yaml` file to `secret.yaml` and replace the base64 API key with one generated from your AWS Route53 account.

Once you have done that, you can deploy these resources by running:

```bash
kustomize build --enable-alpha-plugins | kubectl apply -f -
```
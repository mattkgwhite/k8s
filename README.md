# k8s

This repository contains the Kubernetes configuration files managed by GitOps, specifically [Flux](https://fluxcd.io/) and is a work is progress / under development.

Using a combination of a variety of resources such as [Vault](https://www.vaultproject.io/), [ArgoCD](https://argo-cd.readthedocs.io/en/stable/), [SOPS](https://github.com/mozilla/sops), [Age](https://github.com/FiloSottile/age)


## TODO

- [X] Folder Structure Setup
  - [ ] Addition Configuration, On-Going
- [X] Secret Management - SOPS & Age
- [ ] Flux Setup / Deployment
- [ ] Ingress
  - [ ] Ingress-Nginx
  - [ ] Emissary Ingress
- [ ] Security
  - [ ] Authentication
- [ ] Storage
  - [ ] HCloud Volumes
  - [ ] Minio
- [ ] CI / CD
 - [ ] Jenkins
 - [ ] Tekton
- [ ] Backups
  - [ ] Scheduled / Automated
  - [ ] External Backups
- [ ] Monitoring & Alerting

## 📂 Repository structure



## Setup - Single Cluster.

After creating the Node / Host, the following command needs to be run against the Node / Host. This specific command will downloading the latest K3s server install, and install against the Node / Host...With the Traefik and ServiceLB disabled.

```shell
curl -fL https://get.k3s.io | INSTALL_K3S_CHANNEL=latest sh -s - server --cluster-init --kube-apiserver-arg default-not-ready-toleration-seconds=10 --kube-apiserver-arg default-unreachable-toleration-seconds=10 --disable=traefik,servicelb
```

### Prerequisites for Cluster:
 
**CSI Driver** - Access to remote storage via a CIFs Share. To install use one of the following depending on Host Node OS:

    ```
    Ubuntu: `sudo apt-get install -y cifs-utils`
    CentOS: `yum -y install cifs-utils`
    ```

### 💾 Storage

Remote Storage: 
This functionality requires the CSI-Driver to be install from the `Prerequisites for Cluster:` section. Once install will provide the ability of the cluster to reference remote storage options such as [Hetzner's Storage Boxes](https://www.hetzner.com/storage/storage-box), which are scaleable options for remote storage.

### Databaase

Databases that are waiting to be configured and deployed to the cluster:

- Postgresql

### Monitoring

Monitoring services that are waiting to be configured and deployed to the cluster:

- Grafana
- Loki
- Prometheus

### Authentication

Authentication services that are waiting to be configured and deployed to the cluster:

- Authelia
- 0Auth
- Keycloak

### CI/CD 

CI/CD services that are waiting to be configured and deployed to the cluster:

- Jenkins
- Tekton
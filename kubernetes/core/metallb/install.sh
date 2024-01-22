#!/bin/bash

# Check if dry-run flag is set
if [ "$1" == "--dry-run" ]; then
    echo "Dry-run flag set"
    DRY_RUN="server"
else
    DRY_RUN="none"
fi

# Set our variables
HELM_REPO_NAME="metallb"
HELM_REPO_SOURCE="https://metallb.github.io/metallb"
HELM_APP_NAME="metallb"
HELM_APP_VERSION="0.13.12"
HELM_APP_NAMESPACE="metallb-system"

# Add the Helm repository
helm repo add ${HELM_REPO_NAME} ${HELM_REPO_SOURCE}
# Update your local Helm chart repository cache
helm repo update
# Template out and install the Helm chart via pipe to `kubectl apply`
helm template ${HELM_APP_NAME} ${HELM_REPO_NAME}/${HELM_APP_NAME} \
--version ${HELM_APP_VERSION} \
--values values.yaml \
-n ${HELM_APP_NAMESPACE} | \
kubectl apply -f - --dry-run=${DRY_RUN}

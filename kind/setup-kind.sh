#!/bin/bash

# Install Kind
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64
elif [ "$ARCH" = "aarch64" ]; then
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-arm64
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Verify installation
kubectl version --client
kind version


# Show cluster info
kubectl cluster-info --context kind-kind

echo "✅ Kind & kubectl are ready. Happy Kubernetes-ing! 🎉"

#!/usr/bin/env bash

# Downloads and install kubectl tool

K8S_VERSION="${K8S_VERSION:-1.14.8}"

curl -LO "https://storage.googleapis.com/kubernetes-release/release/v$K8S_VERSION/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version

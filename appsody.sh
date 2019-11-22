#!/usr/bin/env bash

# Downloads and installs Appsody CLI for Linux.

APPSODY_VERSION="${APPSODY_VERSION:-0.5.0}"
curl -L --output appsody.tgz "https://github.com/appsody/appsody/releases/download/$APPSODY_VERSION/appsody-$APPSODY_VERSION-linux-amd64.tar.gz"
sudo tar xzf appsody.tgz -C /usr/local/bin/ appsody
rm appsody.tgz
echo "Installed: $(appsody version)"

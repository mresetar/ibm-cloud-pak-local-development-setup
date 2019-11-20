#!/usr/bin/env bash

KABANERO_VERSION="${KABANERO_VERSION:-0.3.0}"
pushd $(realpath .) > /dev/null
mkdir kabanero && cd kabanero 
curl -L --output kabanero.tgz "https://github.com/kabanero-io/kabanero-command-line/releases/download/$KABANERO_VERSION/kabanero-$KABANERO_VERSION-linux-amd64.tar"
tar xzf kabanero.tgz
chmod +x kabanero
sudo mv kabanero /usr/local/bin/
popd > /dev/null
rm -rf kabanero

echo "Installed: $(kabanero version)"

#!/usr/bin/env bash

KABANERO_VERSION="${KABANERO_VERSION:-0.3.0}"
curl -L --output kabanero.tgz "https://github.com/kabanero-io/kabanero-command-line/releases/download/$KABANERO_VERSION/kabanero-$KABANERO_VERSION-linux-amd64.tar"
tar xzf kabanero.tgz -C /usr/local/bin/ kabanero
rm kabanero.tgz

echo "Installed: $(kabanero version)"

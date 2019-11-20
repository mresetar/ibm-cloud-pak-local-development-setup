#!/usr/bin/env bash

APPSODY_VERSION="${APPSODY_VERSION:-0.5.0}"
pushd $(realpath .) > /dev/null
mkdir appsody && cd appsody
curl -L --output appsody.tgz "https://github.com/appsody/appsody/releases/download/$APPSODY_VERSION/appsody-$APPSODY_VERSION-linux-amd64.tar.gz"
tar xzf appsody.tgz
chmod +x appsody
sudo mv appsody /usr/local/bin/
popd > /dev/null
rm -rf appsody

echo "Installed: $(appsody version)"

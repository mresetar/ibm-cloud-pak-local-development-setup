#!/usr/bin/env bash

KABANERO_VERSION="${KABANERO_VERSION:-0.2.1}"
appsody repo add kabanero "https://github.com/kabanero-io/collections/releases/download/$KABANERO_VERSION/kabanero-index.yaml"
appsody repo set-default kabanero


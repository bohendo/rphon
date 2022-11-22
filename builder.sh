#!/usr/bin/env bash
set -e

npm install --package-lock-only

nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json --composition node-modules.nix'

nix-build


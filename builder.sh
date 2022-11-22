#!/usr/bin/env bash
set -e

nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json --composition node-modules.nix'

#if [[ ! -f "node-packages.nix" ]]
#then nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json'
#fi

nix-build


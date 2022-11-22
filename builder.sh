#!/usr/bin/env bash
set -e

if [[ ! -f "node-packages.nix" ]]
then nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json'
else nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json'
fi


nix-build derivation.nix

#ln -sf result/lib/node_modules node_modules

#nix-shell --packages nodePackages.typescript --run 'tsc'

#rm node_modules


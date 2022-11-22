{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/22.05.tar.gz";
    sha256 = "sha256:0d643wp3l77hv2pmg2fi7vyxn4rwy0iyr8djcw1h5x72315ck9ik";
  }) {}
}:

let
  node-modules = (pkgs.callPackage ./node-modules.nix {}).shell.nodeDependencies;
in

  pkgs.stdenv.mkDerivation rec {
    pname = "rphon";
    version = "0.0.1";

    src = ./.;

    buildInputs = [
      pkgs.nodejs-16_x
      pkgs.nodePackages.typescript
      node-modules
    ];

    buildPhase = ''
      rm dist/*
      ln -s ${node-modules}/lib/node_modules ./node_modules
      ${pkgs.nodePackages.typescript}/bin/tsc
    '';

    installPhase = ''
      mkdir -p $out/bin
      mv dist/index.js $out/bin/rphon
      ln -s ${node-modules}/lib/node_modules $out/bin/node_modules
      chmod +x $out/bin/rphon
    '';

  }

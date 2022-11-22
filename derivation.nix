{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/22.05.tar.gz";
    sha256 = "sha256:0d643wp3l77hv2pmg2fi7vyxn4rwy0iyr8djcw1h5x72315ck9ik";
  }) {}
}:
pkgs.stdenv.mkDerivation rec {
  pname = "rphon";
  version = "0.0.1";

  src = ./.;

  buildInputs = [
    pkgs.nodejs-16_x
    pkgs.nodePackages.typescript
    (pkgs.callPackage ./default.nix {}).shell.nodeDependencies
  ];

  buildPhase = ''
    pwd
    echo
    sleep 2
    ls
    echo
    ${pkgs.nodePackages.typescript}/bin/tsc --project tsconfig.json
  '';

    # TODO: add something like this to point tsc at @types/node
    # --typeroots ${pkgs.nodeDependencies._at_types_slash_node}

  installPhase = ''
    mkdir -p $out/bin
    mv dist/index.js $out/bin/rphon
    chmod +x $out/bin/rphon
  '';

}

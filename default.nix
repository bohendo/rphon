{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/22.05.tar.gz";
    sha256 = "sha256:0d643wp3l77hv2pmg2fi7vyxn4rwy0iyr8djcw1h5x72315ck9ik";
  }) {}
}:
pkgs.stdenv.mkDerivation rec {
  pname = "phonetic";
  version = "0.0.1";

  src = ./.;

  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.typescript
  ];

  buildPhase = ''
    ${pkgs.nodePackages.typescript}/bin/tsc index.ts
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv index.js $out/bin/phonetic
    chmod +x $out/bin/phonetic
  '';

}

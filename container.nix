{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; }
}:

let
  phonetic = import ./default.nix { pkgs = pkgsLinux; };
in
  pkgs.dockerTools.buildLayeredImage {
    name = "phonetic-container";
    config = {
      Cmd = [ "${phonetic}/bin/phonetic" ];
    };
  }

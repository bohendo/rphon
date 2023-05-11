{
  description = "Random phonetic phrase generator";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs: with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
        node-modules = (pkgs.callPackage ./node-modules/default.nix {}).shell.nodeDependencies;
      in
      rec {

        packages = rec {

          rphon = pkgs.stdenv.mkDerivation rec {
            pname = "rphon";
            version = "1.0.0";

            src = ./.;

            buildInputs = [
              pkgs.nodejs-16_x
              pkgs.nodePackages.typescript
              node-modules
            ];

            buildPhase = ''
              rm -rf dist/*
              ln -s ${node-modules}/lib/node_modules ./node_modules
              ${pkgs.nodePackages.typescript}/bin/tsc
            '';

            installPhase = ''
              mkdir -p $out/bin
              mv dist/index.js $out/bin/rphon
              ln -s ${node-modules}/lib/node_modules $out/bin/node_modules
              chmod +x $out/bin/rphon
            '';
          };

          default = packages.rphon;

        };

        devShells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              bashInteractive
              just
              node2nix
              nodejs-18_x
              nodePackages.typescript
            ];
          };
        };

      }
    );
}

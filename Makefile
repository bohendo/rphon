
default: result

package-lock.json: package.json
	npm install --package-lock-only

node-modules.nix: package-lock.json
	nix-shell -p node2nix --run 'node2nix --nodejs-16 --input package.json --lock package-lock.json --composition node-modules.nix'

result: node-modules.nix
	nix-build

clean:
	rm -rf dist
	rm -rf result*

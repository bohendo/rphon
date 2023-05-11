
build:
	nix build

upgrade:
	npm install --package-lock-only
	node2nix --nodejs-16 --input package.json --lock package-lock.json --composition node-modules.nix

clean:
	rm -rf dist
	rm -rf result*
	rm -rf node_modules

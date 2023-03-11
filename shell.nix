{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/824f886682fc893e6dbf27114e5001ebf2770ea1.tar.gz") {} }:

pkgs.mkShell {
	buildInputs = [
		pkgs.nodejs
		pkgs.yarn
		pkgs.git
	];

	NODE_OPTIONS = "--dns-result-order=ipv4first";
}

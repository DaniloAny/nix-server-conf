{
  description = "Server configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-stable";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      mods = ./modules;
    in
  {
    nixosConfigurations.homeserver= nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs mods; };
			modules = [
				./common
				./hosts/homeserver/configuration.nix
			];
		};
  };
}

{
  description = "Server configuration.";

  inputs = {
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

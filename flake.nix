{
  description = "Server configuration.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      music = ./modules/music;
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

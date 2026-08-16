{ inputs, pkgs, ... }:
{
  imports = [ inputs.nix-minecraft.nixosModules.minecraft-servers ];
  nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];
  services.minecraft-server = {
	enable = true;
	eula = true;
	openFirewall = true; # Opens the port the server is running on (by default 25565 but in this case 43000)
	servers = {
	  skibidi = {
		enable = true;
		package = pkgs.fabricServers.fabric
		jvmOpts = "-Xmx6G -Xms3G";
		serverProperties = {
		  difficulty = 3;
		  gamemode = 0;
		};
	  };
	};
  };
}

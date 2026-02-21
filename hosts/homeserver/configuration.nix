{ inputs, config, mods, ... }:
{
  imports = [
    ./hardware-configuration.nix
    "${mods}/tailscale.nix"
    "${mods}/pihole.nix"
    "${mods}/forgejo.nix"
    "${mods}/navidrome.nix"
    "${mods}/homepage.nix"
  ];
  system.stateVersion = "25.05";
}
{ inputs, config, mods, ... }:
{
  imports = [
    ./hardware-configuration.nix
    "${mods}/tailscale.nix"
    "${mods}/pihole.nix"
  ];
  system.stateVersion = "25.05";
}
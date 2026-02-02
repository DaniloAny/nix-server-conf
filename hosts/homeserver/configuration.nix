{ inputs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    "${mods}/tailscale.nix"
  ];
  system.stateVersion = "25.05";
}
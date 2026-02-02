{ inputs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/tailscale.nix
  ];
  system.stateVersion = "25.05";
}
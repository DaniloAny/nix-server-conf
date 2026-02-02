{ config, ... }:
{
  networking = {
    firewall.allowedUDPPorts = [ 22 ];
  };

  # ssh config
  services.openssh = {
    enable = true;
  };
}
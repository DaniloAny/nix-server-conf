{ config, ... }:
{
  networking = {
    firewall.allowedUDPPorts = [ 22 ];
    hostName = "homeserver";
  };

  # ssh config
  services.openssh = {
    enable = true;
  };
}
{ config, ... }:
{
  networking = {
    useDHCP = false;
    firewall.allowedUDPPorts = [ 22 ];
    hostName = "homeserver";
    interfaces.enp0s25.ipv4.addresses = [{
      address = "192.168.0.69";
      prefixLength = 24;
    }];
    defaultGateway = "192.168.0.1";
    interfaces.enp0s25.useDHCP = false;
    nameservers = "8.8.8.8";
  };

  # ssh config
  services.openssh = {
    enable = true;
  };
}
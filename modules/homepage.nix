{ config, ...}:
{
  services.homepage-dashboard = {
    enable = true;
    
  };
  networking.firewall.allowedTCPPorts = [8082];
  networking.firewall.allowedUDPPorts = [8082];
} 
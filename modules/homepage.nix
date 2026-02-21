{ config, ...}:
{
  services.homepage-dashboard = {
    enable = true;
    settings = {
        title = "My Awesome Homepage";
        description = "A description of my awesome homepage";
        allowedHosts = "192.168.0.69:8082";
    };
  };
  networking.firewall.allowedTCPPorts = [8082];
  networking.firewall.allowedUDPPorts = [8082];
} 
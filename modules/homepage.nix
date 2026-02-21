{ config, ...}:
{
  services.homepage-dashboard = {
    enable = true;
    settings = {
        title = "My Awesome Homepage";
        description = "A description of my awesome homepage";
    };
  };
  networking.firewall.allowedTCPPorts = [8082];
  networking.firewall.allowedUDPPorts = [8082];
} 
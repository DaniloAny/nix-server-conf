{ lib, config, pkgs, ...}:
{
  services.uptime-kuma = {
    enable = true;
    settings = {
      HOST = "192.168.0.30";
    };
  };
}
{ lib, config, ... }:
{
    services.navidrome = {
        enable = true;
        settings = {
            MusicFolder = "/home/admin/nix-server-conf/modules/music";
            Port = 4533;
            Address = "::";
            
        };
    };
    networking.firewall.allowedTCPPorts = [ 4533 ];
    networking.firewall.allowedUDPPorts = [ 4533 ];
    systemd.services.navidrome.serviceConfig.ProtectHome = lib.mkForce false;
}
{ ... }:
{
    services.navidrome = {
        enable = true;
        settings = {
            MusicFolder = "/home/admin/nix-server-conf/modules/music";
            Port = 4533;
            Address = "192.168.0.69";
        };
    };
    networking.firewall.allowedTCPPorts = [ 4533 ];
    networking.firewall.allowedUDPPorts = [ 4533 ];
    systemd.services.navidrome.serviceConfig.ProtectHome = "read-only";
}
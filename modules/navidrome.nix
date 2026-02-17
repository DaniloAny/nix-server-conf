{ ... }:
{
    services.navidrome = {
        enable = true;
        setting = {
            MusicFolder = ./music;
            Port = 4533;
            Address = "192.168.0.69";
        };
    };
    netowrking.firewall.allowedTCPPorts = [ 4533 ];
    networking.firewall.allowedUDPPorts = [ 4533 ];
}
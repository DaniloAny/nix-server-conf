{ ... }:
{
    services.navidrome = {
        enable = true;
        settings = {
            MusicFolder = "./music/";
            Port = 4533;
            Address = "192.168.0.69";
        };
    };
    networking.firewall.allowedTCPPorts = [ 4533 ];
    networking.firewall.allowedUDPPorts = [ 4533 ];
}
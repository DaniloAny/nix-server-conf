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
    networking.allowedTCPPorts = [ 4533 ];
    networking.allowedUDPPorts = [ 4533 ];
}
{ ... }:
{
    services.navidrome = {
        enable = true;
        setting = {
            MusicFolder = ./music;
            Port = 4533;
        };
    };
    allowedTCPPorts = [ 4533 ];
    allowedUDPPorts = [ 4533 ];
}
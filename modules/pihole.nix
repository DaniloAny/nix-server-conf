{ config, pkgs, ... }:

{
  services.pihole-web = {
    enable = true;
    #ports = [ "53o"];
  };
  services.pihole-ftl = {

    enable = true;
    openFirewallDNS = true;              # To open port 53 for DNS traffic

    # Settings documented at <https://docs.pi-hole.net/ftldns/configfile/>
    settings = {
        dns.upstreams = [ "1.1.1.1" ];   # To use Cloudflare's DNS Servers
    };


    # Lists can be added via URL
    lists = [
        {
            url = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.txt";
            type = "block";
            enabled = true;
            description = "Sample blocklist by hagezi";
        }
    ];
  };
}
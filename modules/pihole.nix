{ config, pkgs, ... }:

{
  services.pihole-web = {
    enable = true;
    ports = [ "333" ];
  };
  services.pihole-ftl = {

    enable = true;
    openFirewallDNS = true; 
    openFirewallDHCP = true;             # To open port 67 for DHCP traffic

    # Settings documented at <https://docs.pi-hole.net/ftldns/configfile/>
    settings = {
      dhcp = {
        active = true;
        start = "192.168.0.2";
        end = "192.168.0.100";
        leasetime = "1w";
        netmask = "255.255.255.0";
      };
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
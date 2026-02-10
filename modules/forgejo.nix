{ ... }:

{
  services.forgejo = {
    enable = true;
    settings = {
      DEFAULT = {
        APP_NAME = "nixiscool";
      };
      service = {
        DISABLE_REGISTRATION = true;
        ENABLE_CAPTCHA = true;
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 22 3000 ];
}
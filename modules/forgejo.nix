{ ... }:

{
  services.forgejo = {
    enable = true;
    settings = {
      DEFAULT = {
        APP_NAME = "the repo";
      };
      service = {
        DISABLE_REGISTRATION = false;
        ENABLE_CAPTCHA = true;
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 22 3000 ];
}
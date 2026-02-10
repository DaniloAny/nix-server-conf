{ ... }:

{
  services.forgejo = {
    enable = true;
    settings = {
      server.DOMAIN = "forge.therepo.org";
      server.ROOT_URL = "https://forge.therepo.org/";
      git.SSH_DOMAIN = "forge.therepo.org";
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
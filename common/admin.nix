{ config, pkgs, ... }:
{
  users.users.admin = {
    isNormalUser = true;
    description = "System Administator";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    openssh.authorizedKeys.keyFiles = [ ./sshkey.pub ];
  };
}
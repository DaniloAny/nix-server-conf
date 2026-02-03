{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
    htop
    git
    unixtools.netstat
  ];
}
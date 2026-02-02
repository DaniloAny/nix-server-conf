{ pkgs, ... }:
{
  enviorment.systemPackages = with pkgs; [
    neovim
    git
  ];
}
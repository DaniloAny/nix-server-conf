{ pkgs, ... }:
{
  enviorment.systemPackages = with pkgs; [
    nvim
    git
  ];
}
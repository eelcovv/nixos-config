{ pkgs, ... }:
{
  home.packages = with pkgs; [
    firefox
    epiphany
    google-chrome
    brave
    telegram-desktop
  ];
}

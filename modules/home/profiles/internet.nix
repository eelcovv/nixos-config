{ pkgs, ... }:
{
  home.packages = with pkgs; [
    firefox
    epiphany
    google-chrome
    brave
    qutebrowser
    tor-browser
    protonmail-desktop
    BiglyBT # torrent client
    transmission_4 # torrent client -browser
    protonmail-desktop
    biglybt # torrent client
    transmission_4 # torrent client 
  ];
}

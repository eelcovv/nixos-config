{ pkgs, ... }:
{
  home.packages = with pkgs; [
    vlc
    mplayer
    gwenview
    geeqie
    thumbs
    cheese
    spotify
    kdenlive
    amarok
  ];
}

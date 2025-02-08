{ pkgs, ... }:
{
  home.packages = with pkgs; [
    graphicsmagick
    imagemagick
    gimp
    krita
    glmark2
    (callPackage ../all/ptgui/ptgui.nix { src = /var/lib/ptgui/PTGui_13.0.tar.gz; version = "Pro 13.0"; })
  ];
}

{ pkgs, ... }:
{
  home.packages = with pkgs; [
    graphicsmagick
    imagemagick
    gimp
    krita
    glmark2
    callPackage
    "../all/ptgui.nix"
    { src = "/nix/store/25hxfzmwkc8nv1k6rhcm3x2ffhz7lbx0-PTGui_13.0.tar.gz"; version = "Pro 13.0"; }
  ];
}

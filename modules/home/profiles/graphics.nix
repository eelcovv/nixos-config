{ pkgs, ... }:
{
  imports = [
    ../all/ptgui.nix
  ];

  home.packages = with pkgs; [
    graphicsmagick
    imagemagick
    gimp
    krita
    glmark2
  ];
}

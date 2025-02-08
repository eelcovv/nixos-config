{ pkgs, ... }:
{
  imports = [
    ../all/ptgui
  ];

  home.packages = with pkgs; [
    graphicsmagick
    imagemagick
    gimp
    krita
    glmark2
  ];
}

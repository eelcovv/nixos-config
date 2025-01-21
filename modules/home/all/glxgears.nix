{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ../all/glxgears.nix
  ];
}

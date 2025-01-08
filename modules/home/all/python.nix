{ pkgs, ... }:
{
  home.packages = with pkgs; [
    uv2nix
  ];
}

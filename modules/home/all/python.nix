{ pkgs, ... }:
{
  home.packages = with pkgs; [
    uv
    tox
    twine
    poetry
  ];
}

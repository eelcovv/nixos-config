{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
  ];
}

  f
  programs.starship = {
enable = true;

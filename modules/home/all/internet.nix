{ flake, pkgs, ... }:

let
  inherit (flake) inputs;
in
{
  imports = [
    inputs.nix-index-database.hmModules.nix-index
  ];
  home.packages = with pkgs; [
    firefox
    epiphany
    google-chrome
    brave
    telegram-desktop
  ];
}

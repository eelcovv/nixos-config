{ pkgs, ... }:
{
  imports = [
    ../all/email
  ];
  home.packages = with pkgs; [
    thunderbird
    himalaya
  ];
}

{ pkgs, ... }:
{
  home.packages.users.eelco = with pkgs; [
    tumblr-convert
  ];
}

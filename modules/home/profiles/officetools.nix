{ pkgs, ... }:
{
  imports = [
    ../all/email/default.nix
  ];
  home.packages = with pkgs; [
    telegram-desktop
    whatsapp-for-linux
    nextcloud-client
    zoom-us
    # jitsi-meet
  ];
}

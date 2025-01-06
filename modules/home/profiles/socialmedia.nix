{ pkgs, ... }:
{
  home.packages = with pkgs; [
    telegram-desktop
    whatsapp-for-linux
    nextcloud-client
    jitsi
    jitsi-meet
  ];
}

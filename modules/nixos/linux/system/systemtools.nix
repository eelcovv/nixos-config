{ pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [
    lshw
    php
  ];
}

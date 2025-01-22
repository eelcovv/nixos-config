{ pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [
    lshw
    php
    php83Extensions.dom
    php83Extensions.zip
    php83Extensions.openssl
    php83Extensions.zlib
    php83Extensions.gd
    php83Extensions.pcntl
    php83Extensions.posix
    php83Extensions.fpdf
  ];
}

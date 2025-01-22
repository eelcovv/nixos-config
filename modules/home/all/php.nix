{ pkgs, ... }: {

  home.packages = with pkgs; [
    php
    php83Extensions.dom
    php83Extensions.zip
    php83Extensions.openssl
    php83Extensions.zlib
    php83Extensions.gd
    php83Extensions.pcntl
    php83Extensions.posix
  ];
}

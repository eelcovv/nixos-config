{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      gcc
      gnat
      libgcc
      unixODBC
    ];
  };
}

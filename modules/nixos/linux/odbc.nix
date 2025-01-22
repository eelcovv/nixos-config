{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      gcc
      gnat
      libgcc
      unixODBC
    ];

    unixODBCDrivers = with pkgs; [
      unixODBC-cache
    ];
  };
}

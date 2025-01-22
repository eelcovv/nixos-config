{ config, lib, pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      gcc
      gnat
      libgcc
      unixODBC
    ];
    # environment.unixODBCDrivers = with pkgs; [
    #   unixODBCDrivers.psql
    # ];
  };
}

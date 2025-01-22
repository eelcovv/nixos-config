{ config, lib, pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      gcc
      gnat
      libgcc
      unixODBC
      lun.progress-openedge-odbc-driver
    ];
    # environment.unixODBCDrivers = with pkgs; [
    #   unixODBCDrivers.psql
    # ];
  };
}

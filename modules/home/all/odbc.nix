{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libgcc
    unixODBC
  ];
}

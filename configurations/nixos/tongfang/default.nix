{ config, flake, pkgs, ... }:

let
  inherit (flake) inputs;
  inherit (inputs) self;
in
{
  imports = [
    self.nixosModules.default
    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-p14s-amd-gen4
    ./configuration.nix
    (self + /modules/nixos/linux/distributed-build.nix)
    (self + /modules/nixos/linux/gui/logseq.nix)
    (self + /modules/nixos/linux/gui/hyprland)
    (self + /modules/nixos/linux/gui/gnome.nix)
    (self + /modules/nixos/linux/gui/desktopish/fonts.nix)
    (self + /modules/nixos/linux/gui/_1password.nix)
    (self + /modules/nixos/linux/gui/desktopish/monitor-brightness.nix)
    (self + /modules/nixos/linux/system/systemtools.nix)
    (self + /modules/nixos/linux/gpu/nvidea.nix)
  ];

  # Use latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;


  services.openssh.enable = true;
  services.tailscale.enable = true;
  # services.fprintd.enable = true; -- bad UX
  services.syncthing = rec {
    enable = true;
    user = flake.config.me.username;
    dataDir = "/home/${user}/.syncthing";
  };

  programs.nix-ld.enable = true; # for vscode server
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    git
  ];

  # https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc
  boot.kernel.sysctl = {
    "fs.inotify.max_user_watches" = "524288";
  };

  # https://unix.stackexchange.com/q/659901/14042
  services.gnome.gnome-keyring.enable = true;
}

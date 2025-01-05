# Make flake.config.peope.myself the admin of the machine
{ flake, pkgs, lib, ... }:

{
  # Login via SSH with mmy SSH key
  users.users =
    let
      me = flake.config.me;
      myKeys = [
        me.sshKey
        # tongfang host key (see distributed-build.nix)
        # TODO: This should be added to 'pureintent' only
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMwxjnufvXxw3oJULQkqcGOfeS8G3+TFvqH3936qAEr+"
      ];
    in
    {
      root.openssh.authorizedKeys.keys = myKeys;
      ${me.username} = {
        openssh.authorizedKeys.keys = myKeys;
        shell = pkgs.zsh;
      } // lib.optionalAttrs pkgs.stdenv.isLinux {
        isNormalUser = true;
        extraGroups = [ "networkmanager" "wheel" ];
      };
    };

  programs.zsh.enable = lib.mkIf pkgs.stdenv.isLinux true;

  # Make me a sudoer without password
  security = lib.optionalAttrs pkgs.stdenv.isLinux {
    sudo.execWheelOnly = true;
    sudo.wheelNeedsPassword = false;
  };
}

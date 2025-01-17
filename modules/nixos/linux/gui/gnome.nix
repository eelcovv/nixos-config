{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;

    # Enable the GDM display manager for adding shortcuts
    desktopManager.gnome = {
      enable = true;
    };
  };

  programs.dconf = {
    enable = true;
    profiles.user.databases = [
      {
        settings = {
          "org/gnome/settings-daemon/plugins/media-keys" = {
            area-screenshot = [ "<Primary><Shift>Print" ];
            kitty = [ "<Super><k>Kitty" ];
          };
        };
        lockAll = true;
      }
    ];
  };

  environment.systemPackages = with pkgs; [
    # This is necessary to set CAPS to CTRL
    gnome-tweaks
  ];


}

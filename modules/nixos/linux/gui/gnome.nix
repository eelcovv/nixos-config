{ pkgs, ... }: {

  # Add your custom shortcuts below
  # Run 'dconf dump /' to get the current settings
  programs.dconf = {
    enable = true;
    profiles.user.databases = [
      {
        lockAll = true;
        settings = {

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
            binding = "<Super>k";
            command = "kitty";
            name = "Kitty Console";
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
            binding = "<Super>g";
            command = "google-chrome-stable";
            name = "Google Chrome";
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
            binding = "<Super>c";
            command = "code";
            name = "VSCode";
          };

          "org/gnome/shell/window-switcher" = {
            current-workspace-only = true;
          };
        };
      }
    ];
  };

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;

    # Enable the GDM display manager for adding shortcuts
    desktopManager.gnome = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # This is necessary to set CAPS to CTRL
    gnome-tweaks
  ];
}

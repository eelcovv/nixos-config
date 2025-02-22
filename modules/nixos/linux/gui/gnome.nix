{ pkgs, ... }: {

  # Add your custom shortcuts below
  # Run 'dconf dump /' to get the current settings
  # to reset your current shortcuts, run 'dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/'
  programs.dconf = {
    enable = true;
    profiles.user.databases = [
      {
        lockAll = true;
        settings = {

          # For all configurations below, add an entry here
          "org/gnome/settings-daemon/plugins/media-keys" = {
            custom-keybindings = [
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/"
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/"
            ];
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
            binding = "<Super>t";
            command = "ghostty";
            name = "Ghostty Console";
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

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
            binding = "<Super>b";
            command = "thunderbird";
            name = "ThunderBird";
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" = {
            binding = "<Super><Shift>W";
            command = "wasistlos";
            name = "WasIstLos";
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5" = {
            binding = "<Super>K";
            command = "keeweb";
            name = "KeeWeb";
          };

          #"org/gnome/shell/window-switcher" = {
          #  current-workspace-only = true;
          #};
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

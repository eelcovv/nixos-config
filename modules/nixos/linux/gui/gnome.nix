{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;

    # Enable the GDM display manager for adding shortcuts
    desktopManager.gnome = {
      enable = true;

      extraGSettingsOverridePackages = with pkgs; [ gnome-settings-daemon ];
      extraGSettingsOverrides = ''
        [org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1]
          binding='<Super>t'
          command='kitty'
        name='Kitty'

        [org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2]
        binding='<Super>v'
        command='code'
        name='VSCode'

        [org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3]
        binding='<Super>g'
        command='google-chrome-stable'
        name='Google Chrome'
      '';


    };
  };

  environment.systemPackages = with pkgs; [
    # This is necessary to set CAPS to CTRL
    gnome-tweaks
  ];


}

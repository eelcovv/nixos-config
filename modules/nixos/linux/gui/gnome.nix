{ pkgs, lib, ... }: {

  dconf = {
    enable = true;
    profiles.user.databases = [
      {
        lockAll = true;
        settings = {
          "org/gnome/desktop/interface" = {
            overlay-scrolling = false;
          };

          "org/gnome/desktop/wm/keybindings" = {
            move-to-workspace-1 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-2 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-3 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-4 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-5 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-6 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-7 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-8 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-9 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-10 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-11 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-12 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-left = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-right = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-up = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-down = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            move-to-workspace-last = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-1 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-2 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-3 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-4 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-5 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-6 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-7 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-8 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-9 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-10 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-11 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-12 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-left = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-right = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-up = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-down = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
            switch-to-workspace-last = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          };

          "org/gnome/desktop/wm/preferences" = {
            num-workspaces = "1";
          };

          "org/gnome/settings-daemon/plugins/media-keys" = {
            custom-keybindings = [
              "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
            ];
            home = [ "<Super>e" ];
            magnifier = [ "<Alt><Super>8" ];
            magnifier-zoom-in = [ "<Alt><Super>equal" ];
            magnifier-zoom-out = [ "<Alt><Super>minus" ];
            mic-mute = [ "<Shift><Control><Super>m" ];
            next = [ "<Ctrl><Super>Right" ];
            play = [ "<Ctrl><Super>space" ];
            playback-forward = [ "<Shift><Ctrl><Super>Right" ];
            playback-rewind = [ "<Shift><Ctrl><Super>Left" ];
            previous = [ "<Ctrl><Super>Left" ];
            screensaver = [ "<Super>l" ];
            volume-down-precise = [ "<Ctrl><Super>Down" ];
            volume-mute = [ "<Ctrl><Super>m" ];
            volume-up-precise = [ "<Ctrl><Super>Up" ];
          };

          "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
            binding = "<Ctrl><Alt>t";
            command = "kgx";
            name = "GNOME Console";
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

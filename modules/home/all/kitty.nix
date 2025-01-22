{
  # Better terminal, with good rendering.
  programs.kitty = {
    enable = true;
    # Pick "name" from https://github.com/kovidgoyal/kitty-themes/blob/master/themes.json
    themeFile = "OneDark-Pro";
    font = {
      name = "Monaco";
      size = 12;
    };
    keybindings = {
      "kitty_mod+e" = "kitten hints"; # https://sw.kovidgoyal.net/kitty/kittens/hints/
      "ctrl+c" = "copy_and_clear_or_interrupt";
      "ctrl+v" = "paste_from_clipboard";
    };
    settings = {
      # https://github.com/kovidgoyal/kitty/issues/371#issuecomment-1095268494
      # mouse_map = "left click ungrabbed no-op";
      # Ctrl+Shift+click to open URL.
      confirm_os_window_close = "0";
      # https://github.com/kovidgoyal/kitty/issues/847
      macos_option_as_alt = "yes";
      copy_on_select = "yes";
      allow_remote_control = "yes";
      enabled_layouts = "tall";
    };
  };
}

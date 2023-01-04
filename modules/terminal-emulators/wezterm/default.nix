_: {
  programs = {
    wezterm = {
      enable = true;
      extraConfig = ''
        return {
          color_scheme = "Catppuccin Mocha",
          enable_tab_bar = false,
          font = wezterm.font("Victor Mono Nerd Font"),
          font_size = 12.0
        }
      '';
    };
  };
}

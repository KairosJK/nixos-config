_: {
  programs = {
    alacritty = {
      enable = true;
      settings = {
        colors = {
          primary = {
            background = "#1E1E2E"; # base
            foreground = "#CDD6F4"; # text
            # Bright and dim foreground colors
            dim_foreground = "#CDD6F4"; # text
            bright_foreground = "#CDD6F4"; # text
          };

          # Cursor colors
          cursor = {
            text = "#1E1E2E"; # base
            cursor = "#F5E0DC"; # rosewater
            vi_mode_cursor = {
              text = "#1E1E2E"; # base
              cursor = "#B4BEFE"; # lavender
            };
          };

          # Search colors
          search = {
            matches = {
              foreground = "#1E1E2E"; # base
              background = "#A6ADC8"; # subtext0
            };
            focused_match = {
              foreground = "#1E1E2E"; # base
              background = "#A6E3A1"; # green
            };
            footer_bar = {
              foreground = "#1E1E2E"; # base
              background = "#A6ADC8"; # subtext0
            };
          };

          # Keyboard regex hints
          hints = {
            start = {
              foreground = "#1E1E2E"; # base
              background = "#F9E2AF"; # yellow
            };
            end = {
              foreground = "#1E1E2E"; # base
              background = "#A6ADC8"; # subtext0
            };
          };

          # Selection colors
          selection = {
            text = "#1E1E2E"; # base
            background = "#F5E0DC"; # rosewater
          };

          # Normal colors
          normal = {
            black = "#45475A"; # surface1
            red = "#F38BA8"; # red
            green = "#A6E3A1"; # green
            yellow = "#F9E2AF"; # yellow
            blue = "#89B4FA"; # blue
            magenta = "#F5C2E7"; # pink
            cyan = "#94E2D5"; # teal
            white = "#BAC2DE"; # subtext1
          };

          # Bright colors
          bright = {
            black = "#585B70"; # surface2
            red = "#F38BA8"; # red
            green = "#A6E3A1"; # green
            yellow = "#F9E2AF"; # yellow
            blue = "#89B4FA"; # blue
            magenta = "#F5C2E7"; # pink
            cyan = "#94E2D5"; # teal
            white = "#A6ADC8"; # subtext0
          };

          # Dim colors
          dim = {
            black = "#45475A"; # surface1
            red = "#F38BA8"; # red
            green = "#A6E3A1"; # green
            yellow = "#F9E2AF"; # yellow
            blue = "#89B4FA"; # blue
            magenta = "#F5C2E7"; # pink
            cyan = "#94E2D5"; # teal
            white = "#BAC2DE"; # subtext1
          };
        };
        font.family = "VictorMono";
        font.size = 12;
        window = {
          padding = {
            x = 5;
            y = 5;
          };
        };
      };
    };
  };
}
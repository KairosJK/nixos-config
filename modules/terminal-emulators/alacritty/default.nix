{themes, ...}: let
  black = themes.black;
  white = themes.white;
  red = themes.red;
  green = themes.green;
  yellow = themes.yellow;
  blue = themes.blue;
  magenta = themes.magenta;
  cyan = themes.cyan;

  bright_black = themes.bright_black;
  bright_white = themes.bright_white;
  bright_red = themes.bright_red;
  bright_green = themes.bright_green;
  bright_yellow = themes.bright_yellow;
  bright_blue = themes.bright_blue;
  bright_magenta = themes.bright_magenta;
  bright_cyan = themes.bright_cyan;

  background = black;
  foreground = bright_white;
in {
  programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 1;
        };
        colors = {
          primary = {
            inherit background foreground;
            # Bright and dim foreground colors
            dim_foreground = foreground;
            bright_foreground = foreground;
          };

          # Cursor colors
          cursor = {
            text = background;
            cursor = foreground;
            vi_mode_cursor = {
              text = background;
              cursor = foreground;
            };
          };

          # Search colors
          search = {
            matches = {
              inherit foreground;
              background = white; #grey
            };
            focused_match = {
              inherit foreground;
              background = green;
            };
            footer_bar = {
              inherit foreground;
              background = white; #grey
            };
          };

          # Keyboard regex hints
          hints = {
            start = {
              inherit foreground;
              background = yellow;
            };
            end = {
              inherit foreground;
              background = white; #grey
            };
          };

          # Selection colors
          selection = {
            text = background;
            background = foreground;
          };

          # Normal colors
          normal = {
            inherit
              black
              white
              red
              green
              yellow
              blue
              magenta
              cyan
              ;
          };
        };
        font.normal.family = "Terminus";
        font.size = 14;
        window = {
          padding = {
            x = 10;
            y = 10;
          };
        };
      };
    };
  };
}

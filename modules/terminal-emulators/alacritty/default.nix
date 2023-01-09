{themes, ...}: let
  black = themes.black;
  white = themes.white;
  red = themes.red;
  green = themes.green;
  yellow = themes.yellow;
  blue = themes.blue;
  magenta = themes.magenta;
  cyan = themes.cyan;

  grey = themes.grey;

  background = black;
  foreground = white;
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
              background = grey;
            };
            focused_match = {
              inherit foreground;
              background = green;
            };
            footer_bar = {
              inherit foreground;
              background = grey;
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
              background = grey;
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

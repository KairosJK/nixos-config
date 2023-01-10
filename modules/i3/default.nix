{
  config,
  lib,
  themes,
  pkgs,
  ...
}: let
  mod = "Mod4";
in {
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = mod;

      fonts = {
        names = ["Terminus" "FiraCode"];
        size = 14.0;
      };

      terminal = "alacritty";
      menu = "${pkgs.rofi}/bin/rofi -show drun -show-icons";

      colors = {
        focused = {
          border = "#FFFFFF";
          background = themes.black;
          childBorder = "#FFFFFF";
          indicator = "#FFFFFF";
          text = themes.white;
        };
        focusedInactive = {
          border = themes.black;
          background = themes.black;
          childBorder = themes.black;
          indicator = themes.black;
          text = themes.white;
        };
        placeholder = {
          border = themes.black;
          background = themes.black;
          childBorder = themes.black;
          indicator = themes.black;
          text = themes.white;
        };
        unfocused = {
          border = themes.black;
          background = themes.black;
          childBorder = themes.black;
          indicator = themes.black;
          text = themes.white;
        };
        urgent = {
          border = themes.red;
          background = themes.black;
          childBorder = themes.red;
          indicator = themes.red;
          text = themes.white;
        };
      };

      gaps = {
        inner = 10;
        outer = 5;
      };

      keybindings = lib.mkOptionDefault {
        "${mod}+w" = "exec ${pkgs.rofi}/bin/rofi -show window -show-icons";
        "${mod}+s" = "exec ${pkgs.rofi}/bin/rofi -show ssh -show-icons";
        "${mod}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
        "${mod}+Shift+f" = "exec ${pkgs.firefox}/bin/firefox";
        "${mod}+Shift+x" = "exec sh -c '${pkgs.i3lock}/bin/i3lock -c 222222 & sleep 5 && xset dpms force of'";

        # Focus
        "${mod}+j" = "focus left";
        "${mod}+k" = "focus down";
        "${mod}+l" = "focus up";
        "${mod}+semicolon" = "focus right";

        # Move
        "${mod}+Shift+j" = "move left";
        "${mod}+Shift+k" = "move down";
        "${mod}+Shift+l" = "move up";
        "${mod}+Shift+semicolon" = "move right";
      };
      bars = [
        {
          # Laptop Bar
          position = "top";
          trayOutput = "none";

          fonts = {
            names = ["Terminus" "FiraCode"];
            size = 14.0;
          };

          statusCommand = "${pkgs.i3status-rust}/bin/i3status-rs ~/.config/i3status-rust/config-default.toml";

          extraConfig = ''
            output eDP-1
          '';
        }
        {
          # Desktop 01 Bar
          position = "top";
          trayOutput = "none";

          fonts = {
            names = ["Terminus" "FiraCode"];
            size = 14.0;
          };

          statusCommand = "${pkgs.i3status-rust}/bin/i3status-rs ~/.config/i3status-rust/config-default.toml";

          extraConfig = ''
            output DP-4
          '';
        }

        {
          # Desktop 02 Bar
          position = "top";
          trayOutput = "none";

          fonts = {
            names = ["Terminus" "FiraCode"];
            size = 14.0;
          };

          extraConfig = ''
            output HDMI-0
          '';
        }
      ];
    };
    extraConfig = ''
      for_window [class=".*"] border pixel 4
    ''; # Window border option does not express itself on every window, so this workaround is used
  };
}

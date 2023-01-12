{pkgs, ...}: {
  services = {
    xserver = {
      enable = true;

      # Configure keymap in X11
      layout = "us";
      xkbVariant = "";

      desktopManager = {
        xterm.enable = false;
      };

      #Configure I3 as dm
      displayManager = {
        lightdm = {
          enable = true;
          background = "#282828";
          greeters.slick = {
            enable = true;
            extraConfig = ''
              only-on-monitor=DP-4
              show-a11y=false
              show-keyboard=false
            '';
            font.name = "terminus";
          };
        };
        defaultSession = "none+i3";
      };

      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
      };
    };
  };
}

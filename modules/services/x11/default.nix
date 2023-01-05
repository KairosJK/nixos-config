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
          background = "#000000";
          greeters.slick = {
            enable = true;
            extraConfig = ''
              only-on-monitor=DP-1
              show-a11y=false
              show-hostname=false
              show-keyboard=false
            '';
            font.name = "Terminus";
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

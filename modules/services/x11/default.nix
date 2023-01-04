{pkgs, ...}: {
  services = {
    xserver = {
      enable = true;
      
      # Configure keymap in X11
      layout = "us";  
      xkbVariant = "";

      desktopManager = {
        xterm.enable = false;
        xfce = {
          enable = true;
          noDesktop = true;
          enableXfwm = false;
        };
      };

      #Configure I3 as dm
      displayManager = {
        gdm.enable = true;
        defaultSession = "xfce+i3";
      };

      #Configure I3 as wm
      windowManager.i3 = {
          package = pkgs.i3-gaps;
          enable = true;
      };
    };
  };
}

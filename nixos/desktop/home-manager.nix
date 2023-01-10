{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      discord
      docker
      gimp
      libreoffice
      spotify
      steam
      teams
      vlc
      youtube-dl
      zoom-us
    ];
  };

  #home.sessionVariables = {};

  imports =
    import ../../modules/services
    ++ [(import ../../modules/i3status-rust/desktop)];

  xsession = {
    initExtra = ''
      xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate right --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --mode 2560x1080 --pos 1080x334 --rotate normal --output DP-5 --off
      feh --bg-scale ~/nixos-config/wallpaper/wallpaper_monitor2.png --bg-scale ~/nixos-config/wallpaper/wallpaper_monitor1.png
    '';
    windowManager.i3.extraConfig = ''
      workspace 1 output DP-4
      workspace 2 output HDMI-0
    '';
  };
}

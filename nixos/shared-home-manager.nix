{
  pkgs,
  stateVersion,
  user,
  ...
}: {
  home = {
    inherit stateVersion;
    packages = with pkgs; [
      gparted
      pavucontrol
      btop
      xclip
      xfce.thunar
      killall
      alsa-utils
      youtube-dl
      neofetch
      feh
      unzip
      wine
      zip
    ];
    username = "${user}";
  };

  home.sessionVariables = {
    DIRENV_LOG_FORMAT = "";
  };

  imports =
    (import ../modules/command-line)
    ++ (import ../modules/editors)
    ++ (import ../modules/internet)
    ++ [(import ../modules/rofi)]
    ++ (import ../modules/shells)
    ++ (import ../modules/terminal-emulators)
    ++ [(import ../modules/i3)];
  #++ [(import ../modules/services/picom)];

  xsession = {
    enable = true;
    initExtra = ''
      xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate right --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --mode 2560x1080 --pos 1080x334 --rotate normal --output DP-5 --off
      feh --bg-scale ~/nixos-config/wallpaper/wallpaper_monitor2.png --bg-scale ~/nixos-config/wallpaper/wallpaper_monitor1.png
    '';
  };

  programs.home-manager.enable = true;
}

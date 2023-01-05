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
      killall
      youtube-dl
      neofetch
      feh
      unzip
      wine
      zip
    ];
    username = "${user}";
  };

  #home.sessionVariables = {};

  imports =
    (import ../modules/command-line)
    ++ (import ../modules/editors)
    ++ (import ../modules/internet)
    ++ [(import ../modules/rofi)]
    ++ (import ../modules/shells)
    ++ (import ../modules/terminal-emulators)
    ++ [(import ../modules/i3wm)];
  #++ [(import ../modules/services/picom)];

  xsession = {
    enable = true;
    initExtra = ''
      xrandr --output DVI-D-1 --off --output DP-1 --primary --mode 2560x1080 --pos 1080x375 --rotate normal --output DP-2 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate right --output DP-3 --off;
      feh --bg-scale ~/nixos-config/wallpaper/wallpaper.jpg
    '';
  };

  programs.home-manager.enable = true;
}

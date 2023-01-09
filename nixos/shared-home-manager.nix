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
  };

  programs.home-manager.enable = true;
}

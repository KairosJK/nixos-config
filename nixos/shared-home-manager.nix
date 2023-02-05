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
      ripgrep
      pavucontrol
      iw
      btop
      i3status-rust
      xclip
      xfce.thunar
      killall
      deluge
      networkmanagerapplet
      alsa-utils
      youtube-dl
      neofetch
      feh
      unzip
      wine
      gnumake
      obsidian
      gdb
      gcc
      valgrind
      zip
    ];
    username = "${user}";
  };

  home.sessionVariables = {
    DIRENV_LOG_FORMAT = "";
    NIXOS_CONF_DIR = "$HOME/nixos-config/";
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

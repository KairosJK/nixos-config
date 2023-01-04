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
      htop
      killall
      neofetch
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
    ++ (import ../modules/terminal-emulators);

  xsession.enable = true;

  programs.home-manager.enable = true;
}

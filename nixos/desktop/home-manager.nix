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
    (import ../../modules/services);

  xsession.windowManager.i3.extraConfig = ''
    workspace 1 output DP-4
    workspace 2 output HDMI-0
  '';
}

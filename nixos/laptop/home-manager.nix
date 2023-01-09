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
      cowsay
      youtube-dl
      zoom-us
    ];
  };

  #home.sessionVariables = {};

  imports =
    (import ../../modules/services)
    ++ [(import ../../modules/i3status-rust/laptop)];

  xsession.windowManager.i3.extraConfig = "workspace 1 output eDP-1";
}

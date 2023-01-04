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

  imports = import ../../modules/services;
}

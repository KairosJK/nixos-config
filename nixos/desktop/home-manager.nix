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

  imports = (import ../../modules/services);
}

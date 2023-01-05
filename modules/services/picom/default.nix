{pkgs, ...}: {
  services.picom = {
    backend = "glx";
    enable = true;
    settings = {
      blur = {
        method = "dual_kawase";
        strength = 2;
      };
      glx-no-stencil = true;
    };
  };
}

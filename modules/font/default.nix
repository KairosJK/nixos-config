{pkgs, ...}: {
  fonts = {
    fonts = with pkgs; [
    terminus_font
    fira-code
    dejavu_fonts
    (nerdfonts.override {fonts = ["FiraCode"];})
    ];

    enableDefaultFonts = true;

    fontconfig = {
      defaultFonts = {
        monospace = ["Terminus"];
        sansSerif = ["DejaVu Sans"];
        serif = ["DejaVu Serif"];
      };
    };
  };
}

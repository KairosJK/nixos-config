{pkgs, ...}: {
  fonts = {
    fonts = with pkgs; [
    terminus_font
    fira-code
    (nerdfonts.override {fonts = ["FiraCode"];})
    ];

    enableDefaultFonts = true;

    fontconfig = {
      defaultFonts = {
        monospace = ["Terminus"];
      };
    };
  };
}

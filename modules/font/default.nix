{pkgs, ...}: {
  fonts.fonts = with pkgs; [
    terminus_font
    fira-code
    (nerdfonts.override {fonts = ["FiraCode"];})
  ];
}

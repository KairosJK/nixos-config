{pkgs, ...}: {
  fonts.fonts = with pkgs; [
    terminus_font
    (nerdfonts.override {fonts = ["Terminus"];})
  ];
}

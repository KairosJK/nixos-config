{
  config,
  pkgs,
  ...
}: {
  programs = {
    rofi = {
      enable = true;
      plugins = [
        pkgs.rofi-emoji
      ];
      terminal = "${pkgs.alacritty}/bin/alacritty";
      location = "center";
      font = "Terminus 12";
      extraConfig = {
        modi = "drun,ssh,window";
        display-drun = "Applications";
        drun-display-format = "{name}";
      };
    };
  };
}

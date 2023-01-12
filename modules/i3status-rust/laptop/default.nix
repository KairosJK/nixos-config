{
  programs.i3status-rust = {
    enable = true;
    bars = {
      default = {
        icons = "material-nf";
        theme = "gruvbox-dark";
        blocks = [
          {
            block = "networkmanager";
            on_click = "alacritty -e nmtui";
          }
          {
            block = "sound";
            max_vol = 100;
          }
          {
            block = "backlight";
          }
          {
            block = "battery";
            interval = 10;
            format = "{percentage}";
          }
          {
            block = "time";
            format = "%a %d/%m %R";
            interval = 60;
          }
        ];
      };
    };
  };
}

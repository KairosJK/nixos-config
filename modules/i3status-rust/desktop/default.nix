{
  programs.i3status-rust = {
    enable = true;
    bars = {
      default = {
        icons = "material-nf";
        theme = "gruvbox-dark";
        blocks = [
          {
            block = "music";
            player = "spotify";
            max_width = 75;
            dynamic_width = true;
            seek_step = 5000;
            buttons = ["prev" "play" "next"];
            on_collapsed_click = "spotify";
          }
          {
            block = "networkmanager";
            on_click = "alacritty -e nmtui";
          }
          {
            block = "sound";
            max_vol = 100;
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

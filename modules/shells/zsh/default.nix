{lib, ...}: {
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      initExtra = "neofetch --ascii_distro NixOS_small --color_blocks off --disable cpu gpu memory term de resolution kernel model";
      initExtraBeforeCompInit = lib.concatStrings [
        "alias gc=\"git clone\"\n"
        "alias mkdir=\"mkdir -v\"" # Verbose Directory Creation
        "alias yt=\"youtube-dl --add-metadata -ic\"" # Download Youtube Videos
        "alias ytaudio=\"youtube-dl --add-metadata -xic\"" # Download Youtube Videos [Audio Only]
        "alias cat=\"bat\"" # Remap cat to bat for syntax highlighting
        "alias ls=\"exa --icons\"\n"
        "alias ll=\"exa --icons -lah --no-user --no-time --git\"\n"
        "alias lt=\"exa --icons --tree\""
      ];
    };
  };
}

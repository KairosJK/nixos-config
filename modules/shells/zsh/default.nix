{lib, ...}: {
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      initExtra = "neofetch --ascii_distro NixOS_small --color_blocks off --disable cpu gpu memory term de resolution kernel model";
      initExtraBeforeCompInit = lib.concatStrings [
        "alias c=\"clear\"\n"
        "alias gc=\"git clone\"\n"
        "alias cat=\"bat\"\n" # Remap cat to bat for syntax highlighting
        "alias yt=\"youtube-dl --add-metadata -ic\"\n" # Download Youtube Videos
        "alias ytaudio=\"youtube-dl --add-metadata -xic\"\n" # Download Youtube Videos [Audio Only]
        "alias ls=\"exa --icons\"\n"
        "alias ll=\"exa --icons -lah --no-user --no-time --git\"\n"
        "alias lt=\"exa --icons --tree\"\n"
        "alias mkdir=\"mkdir -v\"\n" # Verbose Directory Creation
      ];
    };
  };
}

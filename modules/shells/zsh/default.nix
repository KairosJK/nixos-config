{lib, ...}: {
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      initExtraBeforeCompInit = lib.concatStrings [
        "alias gc=\"git clone\"\n"
        "alias ls=\"exa --icons\"\n"
        "alias ll=\"exa --icons -la\"\n"
        "alias lt=\"exa --icons --tree\""
      ];
    };
  };
}

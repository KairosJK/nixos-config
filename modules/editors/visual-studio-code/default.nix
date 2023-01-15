{pkgs, ...}: {
  programs = {
    vscode = {
      enable = true;
      package = pkgs.vscode.fhs;
      #userSettings = {
      #  "editor.fontFamily" = "Terminus";
      #};
      #extensions = with pkgs.vscode-extensions; [
      #  # catppuccin.catppuccin-vsc
      #  elmtooling.elm-ls-vscode
      #  gruntfuggly.todo-tree
      #  haskell.haskell
      #  james-yu.latex-workshop
      #  jnoortheen.nix-ide
      #  justusadam.language-haskell
      #  kamadorueda.alejandra
      #  mattn.lisp
      #  mhutchie.git-graph
      #  mkhl.direnv
      #  ms-vscode.cpptools
      #  pkief.material-icon-theme
      #  redhat.vscode-yaml
      #  tamasfe.even-better-toml
      #  streetsidesoftware.code-spell-checker
      #  xaver.clang-format
      #];
    };
  };
}

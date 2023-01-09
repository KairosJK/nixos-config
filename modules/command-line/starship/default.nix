{lib, ...}: {
  programs = {
    starship = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        character = {
          success_symbol = "[𝝺](green)";
          error_symbol = "[𝝺](red)";
        };
        format = lib.concatStrings [
          "$hostname"
          "$directory"
          "$git_branch"
          "$git_commit"
          "$git_state"
          "$git_metrics"
          "$git_status"
          "$character"
        ];
      };
    };
  };
}

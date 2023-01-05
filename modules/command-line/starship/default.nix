{lib, ...}: {
  programs = {
    starship = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        character = {
          success_symbol = "[λ](green)";
          error_symbol = "[λ](red)";
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

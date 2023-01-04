{user, ...}: {
  security = {
    doas = {
      enable = true;
      extraRules = [
        {
          keepEnv = true;
          noPass = true;
          users = ["${user}"];
        }
      ];
    };
    sudo.enable = false;
  };
}

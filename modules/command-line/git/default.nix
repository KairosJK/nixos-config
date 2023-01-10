{pkgs, ...}: {
  programs = {
    git = {
      enable = true;
      userEmail = "jonathan.kocevar@gmail.com";
      userName = "KairosJK";
      delta.enable = true;

      extraConfig = {
        credential.helper = "${
          pkgs.git.override {withLibsecret = true;}
        }/bin/git-credential-libsecret";
      };
    };
  };
}

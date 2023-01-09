{
  inputs,
  pkgs,
  stateVersion,
  user,
  ...
}: {
  i18n.defaultLocale = "en_CA.UTF-8";

  imports = [
    ../modules/sound
    ../modules/font
    ../modules/services/x11
  ];

  nix = {
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
    registry.nixpkgs.flake = inputs.nixpkgs;
    settings.trusted-users = ["${user}"];
  };

  nixpkgs.config.allowUnfree = true;

  environment.pathsToLink = ["/libexec"];

  programs.dconf.enable = true;

  users.users.${user} = {
    extraGroups = ["networkmanager" "wheel" "vboxusers"]; #sound
    isNormalUser = true;
    shell = pkgs.zsh;
  };

  system.stateVersion = stateVersion;

  time.timeZone = "America/Toronto";
}

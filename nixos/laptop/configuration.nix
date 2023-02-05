{user, ...}: {
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../shared-security.nix
  ];

  security.sudo.wheelNeedsPassword = false;

  # Trackpad. Backlight and Media Keys
  services.xserver.libinput.enable = true;
  sound.mediaKeys.enable = true;
  programs.light.enable = true;

  virtualisation = {
    docker.enable = true;
    virtualbox.host.enable = true;
  };

  users.users.${user} = {
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAjLANnZwmrSwpptvyAfulNYZdUfbmSYEqhgWBpMvMGr ultragauche@desktop"
    ];
  };
}

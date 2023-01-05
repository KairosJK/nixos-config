{user, ...}: {
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../shared-security.nix
  ];

  security.sudo.wheelNeedsPassword = false;

  # Trackpad
  services.xserver.libinput.enable = true;

  users.users.${user} = {
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAjLANnZwmrSwpptvyAfulNYZdUfbmSYEqhgWBpMvMGr ultragauche@desktop"
    ];
  };
}

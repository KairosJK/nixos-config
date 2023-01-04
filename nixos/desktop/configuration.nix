_: {
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../shared-security.nix
  ];

  services.printing.enable = true;

  virtualisation = {
    docker.enable = true;
    virtualbox.host.enable = true;
  };
}

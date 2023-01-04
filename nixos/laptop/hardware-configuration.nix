{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}: {
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/99f2c4ad-a832-48a3-9586-14d399dc4043";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-uuid/4EF9-7F0E";
    fsType = "vfat";
  };

  hardware = {
    bluetooth.enable = true;
    cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };

  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  networking.useDHCP = lib.mkDefault true;

  swapDevices = [];
}

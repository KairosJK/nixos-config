{pkgs, ...}: {
  boot = {
    extraModulePackages = [];

    initrd = {
      availableKernelModules = ["xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod"];
      kernelModules = [];
    };

    kernelModules = ["kvm-intel"];

    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        version = 2;
        useOSProber = true;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
    };
  };
}

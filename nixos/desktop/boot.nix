{pkgs, ...}: {
  boot = {
    extraModulePackages = [];

    initrd = {
      availableKernelModules = ["xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod"];
      kernelModules = [];
    };

    kernelModules = ["kvm-intel"];

    kernelPackages = pkgs.linuxPackages_latest;

    # change to grub
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      systemd-boot.enable = true;
    };
  };
}

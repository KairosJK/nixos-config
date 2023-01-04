{pkgs, ...}: {
  boot = {
    extraModulePackages = [];

    initrd = {
      availableKernelModules = ["nvme" "xhci_pci" "usb_storage" "sd_mod"];
      kernelModules = [];
    };

    kernelModules = ["kvm-amd"];

    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      systemd-boot.enable = true;
    };
  };
}

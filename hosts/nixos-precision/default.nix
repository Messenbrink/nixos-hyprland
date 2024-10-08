{
  pkgs,
  config,
  inputs,
  outputs,
  ...
}: {
  imports =
    [
      # Hardware config
      # inputs.hardware.nixosModules.dell-xps-15-9520-nvidia
      ./hardware-configuration.nix

      # Common config
      ../common/core

      # Optional configs
      ../common/optional/hyprland.nix
      # ../common/optional/wacom.nix

      # User config
      ../common/users/mihai
    ]
    ++ (builtins.attrValues outputs.nixosModules);

  # Bootloader.
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.loader.systemd-boot.enable = true;
  boot.loader.grub.useOSProber = true;
  boot.loader.grub.configurationLimit = 15;
  boot.loader.systemd-boot.configurationLimit = 15;
  boot.supportedFilesystems = ["ntfs"];

  networking.hostName = "nixos-precision"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  console.useXkbConfig = true;

  # Configure keymap in X11
  services.xserver = {
    enable = true;
    videoDrivers = ["nvidia"];
    xkb.options = "ctrl:nocaps";
    xkb.layout = "dk";
    xkb.variant = "";
    displayManager.gdm.enable = true;
  };

  hardware = {
    bluetooth.enable = true;
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      prime = {
        # offload = {
        #   enable = true;
        #   enableOffloadCmd = true;
        # };
        intelBusId = "PCI:0:02:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };

  system.stateVersion = "24.05";
}

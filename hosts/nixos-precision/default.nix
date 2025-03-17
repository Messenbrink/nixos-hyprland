{
  pkgs,
  config,
  inputs,
  outputs,
  ...
}: {
  # Import external configurations
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

  # Bootloader settings
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      # "nvidia-drm.modeset=1"
      # "swiotlb=65536"
      # "video=off"
      # "nvidia.NVreg_EnablePCIeGen3=0"
      # "iommu=soft"
      # "cma=256M"
      # "swiotlb=65536"
    ];

    # Use systemd-boot and configure EFI
    loader = {
      grub = {
        efiSupport = true;
        useOSProber = true;
        configurationLimit = 15;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      systemd-boot = {
        enable = true;
        configurationLimit = 15;
      };
    };

    # boot.supportedFilesystems = ["ntfs"];
  };

  # Networking configuration
  networking = {
    hostName = "nixos-precision"; # Define your hostname.
    # wireless.enable = true; # Enables wireless support via wpa_supplicant.
  };

  # Console configuration
  console = {
    useXkbConfig = true;
  };

  # X11 configuration and input settings
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
    xkb = {
      options = "ctrl:nocaps";
      layout = "dk";
      variant = "";
    };
  };

  # Display manager configuration
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  # PostgreSQL service
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
    settings = {
      listen_addresses = "localhost";
      port = 5432;
      max_connections = 100;
    };
  };

  # Hardware-related configurations
  hardware.enableAllFirmware = true;

  hardware = {
    bluetooth = {
      enable = true;
    };

    graphics = {
      enable = true;
      enable32Bit = true;
    };

    nvidia = {
      modesetting.enable = true;
      powerManagement = {
        enable = true;
        finegrained = false;
      };
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;

      #prime = {
      #  offload = {
      #    enable = true;
      #    enableOffloadCmd = true;
      #  };
      #  intelBusId = "PCI:0:02:0";
      #  nvidiaBusId = "PCI:1:0:0";
      #};
    };
  };

  # Set the NixOS state version
  system.stateVersion = "24.05";
}

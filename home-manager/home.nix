{ config, pkgs, ... }:
{

  imports = [
    ./apps/gammastep.nix
    ./apps/kitty.nix
    ./apps/starship.nix
    ./apps/wezterm.nix
    ./apps/zsh.nix
    ./apps/cli.nix
  ];

  home.username = "dileep";
  home.homeDirectory = "/home/dileep";
  home.stateVersion = "23.05";

  programs.home-manager.enable = true;

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    defaultCacheTtl = 3600;
  };

  home.packages = with pkgs; [
    bat
    git
    gnome.gedit
    gnome.nautilus
    gnome.seahorse
    gparted
    grim
    htop
    hyprland
    hyprpaper
    libnotify
    libsForQt5.okular
    libxcrypt-legacy
    logseq
    lshw
    mako
    morgen
    neofetch
    neovim
    nixpkgs-fmt
    nodejs_20
    obsidian
    pavucontrol
    pipewire
    psmisc
    python311Packages.toggl-cli
    python312
    signal-desktop
    slack
    slurp
    udisks
    vim
    vivaldi
    vscode-fhs
    waybar
    wget
    wl-clipboard
    wofi
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    zoom-us
  ];
}

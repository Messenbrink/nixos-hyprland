{pkgs, ...}: {
  imports = [
    ./gpg.nix
    ./syncthing.nix
    ./zathura.nix
    ./zed.nix
  ];

  home.packages = with pkgs; [
    #_1password
    #_1password-gui
    age
    atac
    chromium
    eog
    git
    gparted
    helix
    libgcc
    libreoffice-fresh
    librewolf
    libsForQt5.okular
    #logseq # a knowledge management and collaboration platform
    lshw # Provide detailed information on the hardware configuration of the machine
    nautilus
    notesnook
    obsidian
    pandoc
    pdfarranger
    postgresql_15
    pgcli
    psmisc
    portal
    seahorse
    signal-desktop
    slack
    sshs
    sops
    texliveFull
    udisks
    zed-editor
    zoom-us
    zotero_7
  ];
}

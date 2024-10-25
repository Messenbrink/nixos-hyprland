{pkgs, ...}: {
  imports = [
    ./syncthing.nix
    ./zathura.nix
  ];

  home.packages = with pkgs; [
    age
    atac
    chromium
    git
    helix
    libgcc
    libreoffice-fresh
    librewolf
    libsForQt5.okular
    #logseq # a knowledge management and collaboration platform
    lshw # Provide detailed information on the hardware configuration of the machine
    notesnook
    obsidian
    pandoc
    pdfarranger
    postgresql_15
    pgcli
    psmisc
    portal
    signal-desktop
    slack
    sshs
    sops
    texliveFull
    udisks
    zoom-us
    zotero_7
  ];
}

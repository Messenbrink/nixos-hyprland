{pkgs, ...}: {
  imports = [
    ./syncthing.nix
    ./zathura.nix
  ];

  home.packages = with pkgs; [
    age
    chromium
    git
    gitkraken
    helix
    libgcc
    libreoffice-fresh
    librewolf
    libsForQt5.okular
    logseq
    lshw
    morgen
    obsidian
    pandoc
    pdfarranger
    psmisc
    signal-desktop
    slack
    sops
    texliveFull
    udisks
    zoom-us
    zotero_7
  ];
}

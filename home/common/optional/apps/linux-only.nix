{pkgs, ...}: {
  imports = [
    ./gpg.nix
  ];
  home.packages = with pkgs; [
    _1password
    _1password-gui
    # kdePackages.wacomtablet
    chromium
    gnome.eog
    gnome.nautilus
    gnome.seahorse
    gparted
    helix
    libgcc
    libreoffice-fresh
    librewolf
    libsForQt5.okular
    # libwacom
    logseq
    lshw
    morgen
    obsidian
    pdfarranger
    psmisc
    signal-desktop
    udisks
    vscode-fhs
    zotero_7
  ];
}

{pkgs, ...}: {
  imports = [
    ./gpg.nix
    # ./ollama.nix
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
    #davinci-resolve
    eog
    git
    gparted
    helix
    libgcc
    librewolf
    libsForQt5.okular
    #logseq # a knowledge management and collaboration platform
    lshw # Provide detailed information on the hardware configuration of the machine
    mullvad-vpn
    nautilus
    notesnook
    obsidian
    pandoc
    pdfarranger
    postgresql_15
    pgcli
    psmisc
    portal
    popsicle
    seahorse
    signal-desktop
    slack
    sof-firmware
    sshs
    sops
    texliveFull
    ollama
    oterm
    udisks
    zed-editor
    zoom-us
  ];
}

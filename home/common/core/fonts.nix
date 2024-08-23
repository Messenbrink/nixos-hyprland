{pkgs, ...}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = ["FiraCode" "CascadiaCode" "FantasqueSansMono"];
    })
    adobe-source-code-pro-fonts
    font-awesome
    ia-writer-duospace
    ia-writer-quattro
    inter-font
    libre-baskerville
    monaspace
    noto-fonts
    noto-fonts-emoji
    otf-firamono-nerd
    otf-sora
    papirus-icon-theme
    recursive
    sn-pro
    ttf-comfortaa
    ttf-fantasque-nerd
    ttf-icomoon-feather
    ttf-iosevka-nerd
    ttf-jetbrains-mono-nerd
    ttf-nerd-fonts-symbols-common
  ];
}

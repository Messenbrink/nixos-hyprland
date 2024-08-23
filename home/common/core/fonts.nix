{pkgs, ...}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = ["FiraCode" "CascadiaCode" "FantasqueSansMono"];
    })
    font-awesome
    noto-fonts
    noto-fonts-emoji
    recursive
    sn-pro
    ia-writer-quattro
    ia-writer-duospace
    libre-baskerville
    monaspace
    papirus-icon-them
    otf-sora
    ttf-nerd-fonts-symbols-common
    otf-firamono-nerd inter-font
    ttf-fantasque-nerd noto-fonts
    noto-fonts-emoji ttf-comfortaa
    ttf-jetbrains-mono-nerd
    ttf-icomoon-feather
    ttf-iosevka-nerd
    adobe-source-code-pro-fonts
  ];
}

{pkgs, ...}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = ["FiraCode" "CascadiaCode" "FantasqueSansMono"];
    })
    source-code-pro
    font-awesome
    ia-writer-duospace
    ia-writer-quattro
    libre-baskerville
    monaspace
    noto-fonts
    noto-fonts-emoji
    dotcolon-fonts
    papirus-icon-theme
    recursive
    sn-pro
    comfortaa
    fantasque-sans-mono
    icomoon-feather
    iosevka
    jetbrains-mono
    nerdfonts
  ];
}

{pkgs, ...}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # (nerd-fonts.override {
    #   fonts = ["FiraCode" "CascadiaCode" "FantasqueSansMono"];
    # })
    cascadia-code
    comfortaa
    dotcolon-fonts
    fantasque-sans-mono
    fira-code
    font-awesome
    ia-writer-duospace
    ia-writer-quattro
    icomoon-feather
    iosevka
    jetbrains-mono
    libre-baskerville
    monaspace
    nerd-fonts.caskaydia-cove
    noto-fonts
    noto-fonts-emoji
    papirus-nord
    recursive
    sn-pro
    source-code-pro
  ];
}

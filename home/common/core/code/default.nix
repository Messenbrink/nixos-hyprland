{pkgs, ...}: {
  home.packages = with pkgs; [
    python312
    julia-bin
    nodejs_20
    quarto
    rustc
    typescript
    lua
  ];

  # conda
  # home.file.".condarc".source = ./.condarc;
  # npm
  home.file.".npmrc".source = ./.npmrc;
  # stylua
  home.file.".config/stylua.toml".source = ./stylua.toml;
}

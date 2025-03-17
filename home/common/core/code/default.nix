{pkgs, ...}: {
  home.packages = with pkgs; [
    python3
    # julia-bin
    go
    nodejs_22
    quarto
    gcc
    rustc
    cargo
    typescript
    lua
  ];

  # conda
  home.file.".condarc".source = ./.condarc;
  # npm
  home.file.".npmrc".source = ./.npmrc;
  # stylua
  home.file.".config/stylua.toml".source = ./stylua.toml;
}

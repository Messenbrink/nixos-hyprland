{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./atuin.nix
    ./bat
    ./btop
    ./direnv.nix
    ./eza.nix
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./git-cliff.nix
    ./helix.nix
    ./jujutsu.nix
    ./lazygit.nix
    ./mods
    ./ripgrep.nix
    ./scripts.nix
    ./starship.nix
    ./tmux
    ./yazi
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    #inputs.neovim.packages.${system}.default
    coreutils-full
    devbox
    entr
    fd
    git-extras
    gnumake
    google-cloud-sdk
    jc
    jq
    just
    lazydocker
    libnotify
    libxcrypt
    ncdu
    neofetch
    nnn
    nix-tree
    # nodePackages.github-copilot-cli
    nodePackages.typescript-language-server # Typescript Server for Helix
    # openvpn
    p7zip
    pciutils
    tldr
    tree
    unrar
    unzip
    vim
    wget
    zip
  ];
}

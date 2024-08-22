{pkgs, ...}: {
  imports = [
    ./syncthing.nix
    ./zathura.nix
  ];

  home.packages = with pkgs; [
    age
    gitkraken
    git
    pandoc
    slack
    texliveFull
    sops
    zoom-us
  ];
}

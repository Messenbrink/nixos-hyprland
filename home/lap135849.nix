{
  config,
  outputs,
  ...
}: {
  imports =
    [
      ./common/core
      ./common/optional/apps/linux-only.nix
      ./common/optional/apps/ulauncher.nix
      ./common/optional/desktops/gtk.nix
      ./common/optional/desktops/qt5.nix
      ./common/optional/desktops/xdg.nix
      # NOTE: espanso disabled because it's not working on wayland
      # ./common/optional/misc/espanso.nix
    ]
    ++ (builtins.attrValues outputs.homeManagerModules);

  home = {
    username = "g8k";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "24.05";
  };
}

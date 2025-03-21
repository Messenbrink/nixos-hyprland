{
  config,
  outputs,
  ...
}: {
  imports = [
    ./common/core
    ./common/optional/apps/wezterm.nix
    ./common/optional/apps/kitty.nix
    # ./common/optional/apps/ulauncher.nix
    ./common/optional/apps/rofi
    ./common/optional/apps/wofi
    ./common/optional/desktops/simpleBlueColorWaybar
    ./common/optional/desktops/services/mako
    ./common/optional/desktops/gtk.nix
    ./common/optional/desktops/qt5.nix
    ./common/optional/desktops/xdg.nix
    # NOTE: espanso disabled because it's not working on wayland
    # ./common/optional/misc/espanso.nix
    # NOTE: gammastep disabled because of flickering issue
    # ./common/optional/misc/gammastep.nix
  ];

  home = {
    username = "mihai";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "24.05";
  };
}

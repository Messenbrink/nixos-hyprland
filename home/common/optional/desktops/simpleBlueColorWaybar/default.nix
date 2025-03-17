# https://github.com/d00m1k/SimpleBlueColorWaybar
{pkgs, ...}: {
  home.packages = with pkgs; [
    waybar
  ];

  home.file.".config/waybar" = {
    recursive = true;
    source = ./config;
  };
}

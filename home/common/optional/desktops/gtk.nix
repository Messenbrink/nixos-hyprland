{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "frostblue3";
      package = pkgs.papirus-nord;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
    };
    theme = {
      name = "Nordic-Polar";
      package = pkgs.nordic;
      # .override {
      #   accents = ["mauve"];
      #   size = "standard";
      #   tweaks = ["black"];
      #   variant = "mocha";
      # };
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.sessionVariables.GTK_THEME = "Catppuccin-Mocha-Standard-Mauve-Dark";
  home.pointerCursor.gtk.enable = true;
  home.pointerCursor.package = pkgs.bibata-cursors;
  home.pointerCursor.name = "Bibata-Modern-Ice";
}

{
  xdg.enable = true;

  xdg.desktopEntries = {
    okular = {
      name = "Okular";
      genericName = "PDF Viewer";
      exec = "okular %U";
      terminal = false;
      categories = ["Application"];
      mimeType = ["application/pdf"];
    };
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = ["okular.desktop"];
      "text/html" = ["librewolf-browser.desktop"];
      "application/xhtml+xml" = ["librewolf-browser.desktop"];
      "x-scheme-handler/http" = ["librewolf-browser.desktop"];
      "x-scheme-handler/https" = ["librewolf-browser.desktop"];
    };
  };
}

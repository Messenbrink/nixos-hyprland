{
  programs.helix = {
    enable = true;
    #package = helix.packages.${pkgs.system}.default;
    settings = {
      theme = "nord-night";
      # editor = {
      # line-number = "relative";
      # cursor-shape = {
      #   insert = "bar";
      #   normal = "block";
      #   select = "underline";
      # };
      # indent-guides.render = true;
      # };
      #keys.normal = {
      #  "C-p" = ":pipe github-copilot-cli suggest";
      #  "C-e" = ":pipe github-copilot-cli explain";
      #};
    };
  };
}

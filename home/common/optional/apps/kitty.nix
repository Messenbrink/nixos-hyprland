{
  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode Mono";
      size = 12.0;
    };
    shellIntegration.enableBashIntegration = true;
    shellIntegration.enableZshIntegration = true;
    # theme = "Rosé Pine";
    settings = {
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      background_opacity = "0.8";
      window_padding_width = 5;
    };
    extraConfig = ''
      # Nord-night theme
      foreground            #D8DEE9
      background            #2E3440
      selection_foreground  #000000
      selection_background  #FFFACD
      url_color             #0087BD
      cursor                #81A1C1

      # black
      color0   #3B4252
      color8   #4C566A

      # red
      color1   #BF616A
      color9   #BF616A

      # green
      color2   #A3BE8C
      color10  #A3BE8C

      # yellow
      color3   #EBCB8B
      color11  #EBCB8B

      # blue
      color4  #81A1C1
      color12 #81A1C1

      # magenta
      color5   #B48EAD
      color13  #B48EAD

      # cyan
      color6   #88C0D0
      color14  #8FBCBB

      # white
      color7   #E5E9F0
      color15  #ECEFF4
    '';
  };
}

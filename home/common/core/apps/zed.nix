{
  home.file.".config/zed/settings.json".text = builtins.toJSON {
    assistant = {
      default_model = {
        provider = "zed.ai";
        model = "claude-3-5-sonnet-latest";
      };
      version = 2;
    };
    theme = {
      mode = "system";
      light = "Nord";
      dark = "Nord";
    };
    telemetry = {
      diagnostics = false;
      metrics = false;
    };
    base_keymap = "VSCode";
    tab_size = 2;
    soft_tabs = true;
    vim_mode = false;
    ui_font_size = 16;
    buffer_font_size = 16;
  };
}

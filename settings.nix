{
  settings = hostname: {
    inherit hostname;

    # Defaults
    programs = {
      editor = "nvim";
      terminal = "wezterm";
      browser = "zen";
      fileManager = "nautilus";
      terminalFileManager = "yazi";
      git = {
        username = "Mario";
        mail = "mariolopjr@users.noreply.github.com";
      };
    };
  };
}

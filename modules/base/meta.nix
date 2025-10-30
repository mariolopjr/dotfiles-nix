{
  flake.meta = {
    dotfilesPath = "/home/mario/dotfiles";

    programs = {
      editor = "nvim";
      terminal = "ghostty";
      browser = "firefox";
      fileManager = "nautilus"; # TODO: change this to something else for GUI
      terminalFileManager = "yazi";
      git = {
        username = "Mario";
        mail = "mariolopjr@users.noreply.github.com";
      };
    };
  };
}

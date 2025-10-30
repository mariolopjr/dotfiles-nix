{
  flake.meta = {
    dotfilesPath = "/home/mario/dotfiles";

    appearance = {
      border = {
        size = 2;
        radius = 7;
      };
    };

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

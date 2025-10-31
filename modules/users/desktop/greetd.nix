{
  flake.modules = {
    nixos.desktop = {pkgs, ...}: {
      services = {
        greetd = {
          enable = true;
          settings = {
            terminal.vt = 1;
          };
        };
      };

      programs.regreet = {
        enable = true;
      };
    };
  };
}

{
  flake.modules = {
    nixos.desktop = {pkgs, ...}: {
      services = {
        greetd = {
          enable = true;
          settings = {
            default_session = {
              command = "${pkgs.hyprland}/bin/hyprland";
              user = "greeter";
            };
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

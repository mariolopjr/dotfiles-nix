{pkgs, ...}: {
  flake.modules = {
    nixos.desktop = {pkgs, ...}: {
      services = {
        greetd = let
          niriConfig = pkgs.writeText "niri-config" ''
            hotkey-overlay {
              skip-at-startup
            }
            environment {
              GTK_USE_PORTAL "0"
              GDK_DEBUG "no-portals"
            }

            spawn-at-startup "sh" -c "${pkgs.regreet}/bin/regreet; pkill
            -f niri"
          '';
        in {
          enable = true;
          settings = {
            default_session = {
              command = "niri -c ${niriConfig}";
              user = "greeter";
            };
          };
        };
      };

      programs.regreet = {
        enable = true;
      };
    };
  };
}

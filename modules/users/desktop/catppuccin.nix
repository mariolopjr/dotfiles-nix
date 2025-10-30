{
  config,
  inputs,
  ...
}: {
  flake.modules = {
    nixos.desktop.imports = [config.flake.modules.nixos.catppuccin];
    homeManager.desktop.imports = [config.flake.modules.homeManager.catppuccin];

    nixos.catppuccin = {
      imports = [inputs.catppuccin.nixosModules.catppuccin];
      catppuccin = {
        enable = true;
        flavor = "macchiato";
      };
    };

    homeManager.catppuccin = {
      imports = [inputs.catppuccin.homeModules.catppuccin];
      catppuccin = {
        enable = true;
        flavor = "macchiato";
      };
    };
  };
}

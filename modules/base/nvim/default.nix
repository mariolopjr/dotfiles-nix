{
  config,
  lib,
  inputs,
  ...
}: {
  flake-file.inputs.nvf = {
    url = "github:notashelf/nvf";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  # homeManager.desktop.imports = [config.flake.modules.homeManager.nvf];

  flake.modules.homeManager.base = {
    lib,
    pkgs,
    ...
  }: {
    programs.nvf = {
      enable = true;
    };
  };
}

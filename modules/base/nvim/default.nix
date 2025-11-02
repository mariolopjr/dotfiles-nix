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
    # TODO: fix this brokenness lol
    # programs.nvf = {
    #   enable = true;
    # };
  };
}

{
  inputs,
  lib,
  ...
}: {
  flake-file.inputs.flake-file = {
    url = lib.mkDefault "github:vic/flake-file";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  imports = [
    inputs.flake-file.flakeModules.default
    inputs.flake-file.flakeModules.nix-auto-follow
  ];
}

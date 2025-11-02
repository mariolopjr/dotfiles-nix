{inputs, ...}: {
  flake-file.inputs.treefmt-nix = {
    url = "github:numtide/treefmt-nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  imports = [
    inputs.flake-file.flakeModules.treefmt-nix
  ];
}

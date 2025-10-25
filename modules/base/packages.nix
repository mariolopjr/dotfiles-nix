{
  flake.modules.nixos.base =
    { pkgs, ... }:
    {
      environment.systemPackages = builtins.attrValues {
        inherit (pkgs)
          zip
          unzip
          curl
          ;
      };
    };
}

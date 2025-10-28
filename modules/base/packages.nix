{
  flake.modules.nixos.base =
    { pkgs, ... }:
    {
      environment.systemPackages = builtins.attrValues {
        inherit (pkgs)
          curl
          git
          lazygit
          unzip
          zip
          ;
      };
    };
}

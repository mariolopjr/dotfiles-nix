{config, ...}: let
  inherit (config.flake) meta;
in {
  flake.modules = {
    nixos.base = {
      home-manager = {
        backupFileExtension = "backup";
        useGlobalPkgs = true;
        useUserPackages = true;
      };
    };

    homeManager.base = {
      home = {
        username = meta.users.mario.username;
        homeDirectory = meta.users.mario.homeDirectory;
      };

      programs.home-manager.enable = true;
    };
  };
}

{
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
        username = "mario";
        homeDirectory = "/home/mario";
      };

      programs.home-manager.enable = true;
    };
  };
}

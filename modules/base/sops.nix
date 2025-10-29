{
  lib,
  config,
  inputs,
  ...
}: let
  sopsDefaults = {
    defaultSopsFile = ../../secrets/global.yaml;
    defaultSopsFormat = "yaml";
    validateSopsFiles = true;
  };
  inherit (config.flake) meta;
in {
  flake.modules = {
    nixos.base = {hostConfig, ...}: {
      imports = [inputs.sops-nix.nixosModules.sops];
      config = lib.mkIf hostConfig.isInstall {
        sops =
          sopsDefaults
          // {
            # TODO: actual path for this for persistence
            # sops.age.keyFile = "/nix/persist/var/lib/sops-nix/key.txt";
            age.keyFile = "/var/lib/sops-nix/key.txt";
            secrets.mario-password.neededForUsers = true;
          };
      };
    };

    homeManager.base = {hostConfig, ...}: {
      imports = [inputs.sops-nix.homeManagerModules.sops];
      config = lib.mkIf hostConfig.isInstall {
        sops =
          sopsDefaults
          // {
            age.keyFile = "${meta.users.mario.homeDirectory}/.config/sops/age/key.txt";
          };
      };
    };
  };
}

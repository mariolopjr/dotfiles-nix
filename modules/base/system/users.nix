{
  lib,
  config,
  ...
}: let
  inherit (lib) mkIf;
  inherit (config.flake) meta;
in {
  flake.modules.nixos.base = {
    config,
    pkgs,
    hostConfig,
    ...
  }: let
    inherit (hostConfig) isInstall;
  in {
    users = {
      mutableUsers = !isInstall;
      users = {
        mario = {
          isNormalUser = true;
          description = "Mario";
          shell = pkgs.fish;
          initialHashedPassword = mkIf (!isInstall) "";
          # hashedPasswordFile = mkIf isInstall config.sops.secrets.mario-password.path;
          extraGroups = [
            "wheel"
            "input"
          ];
          openssh.authorizedKeys.keys = meta.users.mario.authorizedKeys;
        };

        root = {
          hashedPassword = mkIf isInstall null;
          initialHashedPassword = mkIf (!isInstall) "";
          openssh.authorizedKeys.keys = meta.users.mario.authorizedKeys;
        };
      };
    };
  };
}

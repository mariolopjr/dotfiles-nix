{config, ...}: let
  modules = [
    "base"
    "desktop"
  ];
  inherit (config.flake) meta;
in {
  flake.modules.nixos."hosts/winterfell" =
    config.flake.lib.loadNixosAndHmModuleForUser config modules
    meta.users.mario.username;
}

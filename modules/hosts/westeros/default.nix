{config, ...}: let
  modules = ["base"];
  inherit (config.flake) meta;
in {
  flake.modules.nixos."iso/westeros" =
    config.flake.lib.loadNixosAndHmModuleForUser config modules
    meta.users.mario.username;
}

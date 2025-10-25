{ config, ... }:
let
  modules = [ "base" ];
in
{
  flake.modules.nixos."iso/westeros" =
    config.flake.lib.loadNixosAndHmModuleForUser config modules
      "mario";
}


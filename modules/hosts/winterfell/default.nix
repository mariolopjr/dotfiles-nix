{ config, ... }:
let
  modules = [
  ];
in
{
  flake.modules.nixos."hosts/winterfell" =
    config.flake.lib.loadNixosAndHmModuleForUser config modules
      "mario";
}


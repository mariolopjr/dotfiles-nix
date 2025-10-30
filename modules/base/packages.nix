{
  flake.modules.nixos.base = {pkgs, ...}: {
    environment.systemPackages = builtins.attrValues {
      inherit
        (pkgs)
        curl
        devenv
        git
        lazygit
        neovim
        nh
        unzip
        zip
        ;
    };
  };
}

{
  flake.modules.nixos.base = {pkgs, ...}: {
    environment.systemPackages = builtins.attrValues {
      inherit
        (pkgs)
        curl
        devenv
        fastfetch
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

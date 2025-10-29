{
  self,
  inputs,
  pkgs,
  ...
}: {
  flake.modules = {
    nixos.desktop = {pkgs, ...}: {
      imports = [inputs.niri.nixosModules.niri];
      nixpkgs.overlays = [inputs.niri.overlays.niri];
      programs.niri = {
        enable = true;
        package = pkgs.niri-unstable;
      };
      environment.variables.NIXOS_OZONE_WL = "1";
      environment.systemPackages = with pkgs; [
        wl-clipboard
        wayland-utils
        libsecret
        # cage
        # gamescope
        xwayland-satellite-unstable
      ];
    };
  };
}

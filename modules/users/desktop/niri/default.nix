{
  self,
  inputs,
  pkgs,
  ...
}: {
  flake.modules = {
    nixos.desktop = {pkgs, ...}: {
      programs.niri = {
        enable = true;
      };
      # nixpkgs.overlays = [niri.overlays.niri];
      # programs.niri.package = pkgs.niri-unstable;
      environment.variables.NIXOS_OZONE_WL = "1";
      environment.systemPackages = with pkgs; [
        wl-clipboard
        wayland-utils
        libsecret
        # cage
        # gamescope
        # xwayland-satellite-unstable
      ];
    };
  };
}

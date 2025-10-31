{
  lib,
  inputs,
  ...
}: {
  flake.modules.nixos.base = {
    programs.fish.enable = true;
  };

  flake.modules.homeManager.base = {pkgs, ...}: {
    programs.fish = {
      enable = true;

      interactiveShellInit =
        # fish
        ''
          fish_vi_key_bindings
          set fish_cursor_default block blink # normal mode
          set fish_cursor_insert line blink # insert mode
          set fish_cursor_replace_one underscore blink # replace mode
          set fish_cursor_replace underscore blink # replace mode
          set fish_cursor_visual block # visual mode

          set fish_cursor_external line # in commands
        '';

      plugins = let
        fishPlugin = name: {
          name = name.pname;
          inherit (name) src;
        };
      in [
        # TODO: add the other fish plugins as nix packages
        (fishPlugin pkgs.fishPlugins.autopair)
        (fishPlugin pkgs.fishPlugins.done)
        # (fishPlugin pkgs.fishPlugins.fish-abbreviation-tips)
        (fishPlugin pkgs.fishPlugins.fzf-fish)
        # (fishPlugin pkgs.fishPlugins.puffer-fish)
        (fishPlugin pkgs.fishPlugins.tide)
      ];

      functions = {
        fish_greeting = lib.getExe pkgs.fastfetch;
      };

      shellAbbrs = {
        d = "cd ~/dotfiles";

        l = "ls";
        la = "ls -a";
        ll = "ls -l";
        lla = "ls -la";

        dev = "devenv shell";

        mkdev = {
          setCursor = "%";
          expansion = "nix flake new --template $NH_FLAKE#%";
        };
      };
    };

    home.activation = {
      tide-configure = lib.hm.dag.entryAfter ["writeBoundary"] ''
        :tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Solid --prompt_connection_andor_frame_color=Darkest --prompt_spacing=Sparse --icons='Few icons' --transient=Yes
      '';
    };

    # home.file = {
    #   ".config/fish/functions" = {
    #     source = ./configs/functions;
    #     recursive = true;
    #   };
    #   ".config/fish/completions" = {
    #     source = ./configs/completions;
    #     recursive = true;
    #   };
    # };
  };
}

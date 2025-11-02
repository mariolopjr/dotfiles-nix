# DO-NOT-EDIT. This file was auto-generated using github:vic/flake-file.
# Use `nix run .#write-flake` to regenerate it.
{
  description = "mario's dotfiles";

  outputs = inputs: import ./outputs.nix inputs;

  inputs = {
    catppuccin = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:catppuccin/nix";
    };
    disko = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/disko";
    };
    flake-compat = {
      url = "github:edolstra/flake-compat";
    };
    flake-file = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
        nixpkgs-lib = {
          follows = "nixpkgs";
        };
      };
      url = "github:vic/flake-file";
    };
    flake-parts = {
      inputs = {
        nixpkgs-lib = {
          follows = "nixpkgs";
        };
      };
      url = "github:hercules-ci/flake-parts";
    };
    flake-utils = {
      inputs = {
        systems = {
          follows = "systems";
        };
      };
      url = "github:numtide/flake-utils";
    };
    ghostty = {
      inputs = {
        flake-compat = {
          follows = "flake-compat";
        };
        flake-utils = {
          follows = "flake-utils";
        };
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:ghostty-org/ghostty";
    };
    home-manager = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/home-manager";
    };
    hypridle = {
      inputs = {
        hyprland-protocols = {
          follows = "hyprland/hyprland-protocols";
        };
        hyprlang = {
          follows = "hyprland/hyprlang";
        };
        hyprutils = {
          follows = "hyprland/hyprutils";
        };
        hyprwayland-scanner = {
          follows = "hyprland/hyprwayland-scanner";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprwm/hypridle";
    };
    hyprland = {
      url = "github:hyprwm/hyprland";
    };
    hyprland-contrib = {
      inputs = {
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
      };
      url = "github:hyprwm/contrib";
    };
    hyprland-plugins = {
      inputs = {
        hyprland = {
          follows = "hyprland";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprwm/hyprland-plugins";
    };
    hyprlock = {
      inputs = {
        hyprgraphics = {
          follows = "hyprland/hyprgraphics";
        };
        hyprlang = {
          follows = "hyprland/hyprlang";
        };
        hyprutils = {
          follows = "hyprland/hyprutils";
        };
        hyprwayland-scanner = {
          follows = "hyprland/hyprwayland-scanner";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprwm/hyprlock";
    };
    hyprpaper = {
      inputs = {
        hyprgraphics = {
          follows = "hyprland/hyprgraphics";
        };
        hyprlang = {
          follows = "hyprland/hyprlang";
        };
        hyprutils = {
          follows = "hyprland/hyprutils";
        };
        hyprwayland-scanner = {
          follows = "hyprland/hyprwayland-scanner";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprwm/hyprpaper";
    };
    hyprpicker = {
      inputs = {
        hyprutils = {
          follows = "hyprland/hyprutils";
        };
        hyprwayland-scanner = {
          follows = "hyprland/hyprwayland-scanner";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprwm/hyprpicker";
    };
    import-tree = {
      inputs = {
        nixpkgs-lib = {
          follows = "nixpkgs";
        };
      };
      url = "github:vic/import-tree";
    };
    lanzaboote = {
      url = "github:nix-community/lanzaboote";
    };
    nh = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/nh";
    };
    nix-auto-follow = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:fzakaria/nix-auto-follow";
    };
    nix-index-database = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/nix-index-database";
    };
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
    };
    nixpkgs = {
      url = "nixpkgs/nixos-unstable";
    };
    nixpkgs-stable = {
      url = "nixpkgs/nixos-25.05";
    };
    nvf = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:notashelf/nvf";
    };
    pyprland = {
      inputs = {
        flake-compat = {
          follows = "flake-compat";
        };
        nixpkgs = {
          follows = "hyprland/nixpkgs";
        };
        systems = {
          follows = "hyprland/systems";
        };
      };
      url = "github:hyprland-community/pyprland";
    };
    sops-nix = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:Mic92/sops-nix";
    };
    systems = {
      url = "github:nix-systems/default-linux";
    };
  };

}

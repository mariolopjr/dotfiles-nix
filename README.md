# nixos dotfiles
TBD

## disko

```
sudo nix run github:nix-community/disko -- --mode destroy,format,mount --flake github:mariolopjr/dotfiles-nix#winterfell
```

## install
```
sudo nixos-install --root /mnt --flake github:mariolopjr/dotfiles-nix#winterfell
```


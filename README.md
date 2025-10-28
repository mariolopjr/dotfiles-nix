# nixos dotfiles
TBD

## disko

```
sudo nix run github:nix-community/disko -- --mode destroy,format,mount -flake github:mariolopjr/dotfiles-nix/iso-and-winterfell#winterfell
```

## install
```
nixos-install --root /mnt --flake ./dotfiles-nix/.#vm
```


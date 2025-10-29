# nixos dotfiles
TBD

## disko

```
sudo nix run github:nix-community/disko -- --mode destroy,format,mount --flake github:mariolopjr/dotfiles-nix#winterfell
```

## install
```
sudo nixos-install --root /mnt --flake github:mariolopjr/dotfiles-nix#winterfell
sudo nixos-enter
nvim /var/lib/sops-nix/key.txt
cd /tmp
git clone https://github.com/mariolopjr/dotfiles-nix
nixos-rebuild 
```


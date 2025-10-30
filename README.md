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

## TODO: warnings to address
```
warning: /root/.nix-defexpr/channels exists, but channels have been disabled
warning: /nix/var/nix/profiles/per-user/root/channels exists, but channels have
been disabled
warning: unknown flake output 'meta'
warning: unknown flake output 'images'
warning: Using 'builtins.toFile' to create a file named 'options.json' that references the store path '/nix/store/sqilaxdxljyalv530z1qrd1q3nd4lyxq-source' without a proper context. The resulting file will not have a correct store reference, so this is unreliable and may stop working in the future.
```

machine_hostname := shell("hostname -s")

alias up := update
alias b := boot
alias s := switch
alias t := test
alias fl := fix-lanzaboote
alias d := deploy
alias iso := build-iso

[private]
default:
    @just --list

# ---------- local ---------- #
[group("local")]
update *inputs:
    nix flake update {{inputs}}

[group("local")]
build *args:
    @just build-machine {{machine_hostname}} {{args}}

[group("local")]
test *args:
    @just test-machine {{machine_hostname}} {{args}}

[group("local")]
boot *args:
    @just boot-machine {{machine_hostname}} {{args}}

[group("local")]
switch *args:
    @just switch-machine {{machine_hostname}} {{args}}

[group("local")]
fix-lanzaboote: && boot
    nh clean all -k 3 -K 4d
    sudo rm /boot/EFI/nixos/ -rf

# ---------- deploy ---------- #
[group("deploy")]
install hostname ip=hostname:
    nix run github:nix-community/nixos-anywhere -- \
        --flake ".#{{hostname}}" --target-host "root@{{ip}}" \
        --generate-hardware-config nixos-generate-config "./hosts/{{hostname}}/hardware-configuration.nix"


[group("deploy")]
deploy hostname mode="switch" *extra_flags:
    nh os {{mode}} -H "{{hostname}}" --target-host "root@{{hostname}}" -- {{extra_flags}}

# ---------- iso ---------- #
[group("iso")]
build-iso iso_name="westeros":
    nix run nixpkgs#nix-fast-build -- --skip-cached --flake ".#images.{{iso_name}}"

# ---------- test ---------- #
[group("test")]
build-machine hostname=machine_hostname *args:
    nh os build . --hostname "{{hostname}}" --diff always {{args}}

[group("test")]
test-machine hostname=machine_hostname *args:
    nh os test . --hostname "{{hostname}}" --diff always {{args}}

[group("test")]
boot-machine hostname=machine_hostname *args:
    nh os boot . --hostname "{{hostname}}" --diff always {{args}}

[group("test")]
switch-machine hostname=machine_hostname *args:
    nh os switch . --hostname "{{hostname}}" --diff always {{args}}


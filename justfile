default:
    @just --list

# Activate local configuration
[group('main')]
local:
    nix run

local-impure:
    sudo nixos-rebuild switch --impure --flake .#tongfang
 
# Build the vm of singer
vm_singer:
    nixos-rebuild build-vm --flake .#singer 

# Build the vm of tongfang
vm_tongfang:
    nixos-rebuild build-vm --flake .#tongfang 

# update the flakes
update:
    nix flake update 

# Run this before `nix run` to build the current configuration
[group('main')]
nom:
    , nom build --no-link .#nixosConfigurations.tongfang.config.system.build.toplevel

# Deploy to Beelink
[group('deploy')]
pureintent:
    nix run . pureintent

# Deploy to nginx gate
[group('deploy')]
gate:
    nix run . gate

# Clean the cache
clean:
    nix-collect-garbage

# Format the nix source tree
fmt:
    pre-commit run --all-files

# https://discourse.nixos.org/t/why-doesnt-nix-collect-garbage-remove-old-generations-from-efi-menu/17592/4
fuckboot:
    sudo nix-collect-garbage -d
    sudo /run/current-system/bin/switch-to-configuration boot

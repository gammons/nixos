# Nixos config

This configuration is for my nix system.

## Installation

1. Install nixos
1. clone this repo into ~/.config/home-manager

If setting up a brand new system, then do the following:

1. cp `/etc/nixos/hardware-configuration.nix` to a new subdir for the system's name (e.g. `nixbook`)
1. set up a new entry in `nixosConfigurations` in `flake.nix`
1. `sudo nixos-rebuild switch --flake /home/grant/.config/home-manager#nixbook`

## Updating

`nix flake update`

## Lunarvim

Lunarvim does not currently have a package.  It will need to be installed manually.

1. run `npm set prefix ~/.npm-global` to be able to install global npm packages

## TODO

- [x] docker
- [x] direnv
- [x] asdf (is this needed?)
- [ ] get rid of copy / paste into vim issue (yanking uses clipboard)
- [ ] go back to copilot tabbing
- [x] set a command to launch kitty in gnome



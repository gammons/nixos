{ config, lib, pkgs, ... }:
let
 userData = import ./user.nix;
in
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = userData.user;
  home.homeDirectory = userData.homeDirectory;
  #nixpkgs.config.allowUnfree = true;

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  # install packages that don't require any configuration
  home.packages = with pkgs; [
    zsh
    gcc
    gnumake
    curl
    wget
    tig
    sudo
    htop
    silver-searcher
    fd
    fzf
    exa
    jq
    killall
    unzip
    direnv
    stdenv
    tig
    starship
    atuin
    bat
    tmux
    asdf-vm
    direnv

    # lvim stuff
    cargo
    nodejs_20
    python39
    python311Packages.pynvim
  ];


  imports = [
    ./base/git.nix
    ./base/gtk.nix
    ./base/dconf.nix
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".zshrc".source = ./dotfiles/dot_zshrc;
    ".zshenv".source = ./dotfiles/dot_zshenv;
    ".config/starship.toml".source = ./dotfiles/dot_config/starship.toml;
    ".config/atuin/config.toml".source = ./dotfiles/dot_config/atuin/config.toml;
    ".config/lvim/config.lua".source = ./dotfiles/dot_config/lvim/config.lua;
    ".config/kitty/kitty.conf".source = ./dotfiles/dot_config/kitty/kitty.conf;
    ".tmux.conf".source = ./dotfiles/dot_tmux.conf;
  };

  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  #Add support for ./local/bin
  #home.sessionPath = [
  #  "$HOME/.local/bin"
  #];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

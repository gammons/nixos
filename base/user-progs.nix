{ pkgs, name, ... }:
{
  isNormalUser = true;
  description = name;
  extraGroups = [ "networkmanager" "wheel" "docker" ];
  shell = pkgs.zsh;

  packages = with pkgs; [
    google-chrome
    gnome.gnome-control-center
    gnome.gnome-tweaks
    gnome.gnome-settings-daemon
    gnomeExtensions.forge
    gnomeExtensions.openweather
    gnomeExtensions.vitals
    gnomeExtensions.tophat
    gnomeExtensions.dash-to-panel
    gnomeExtensions.quick-settings-tweaker
    gnomeExtensions.burn-my-windows

    obsidian
    spotify
    slack
    heroku
    zoom-us
    gh
  ];

}

{ pkgs, ... }:
{
  isNormalUser = true;
  description = "Grant Ammons";
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
    kitty
    slack
    #zoom-us
  ];

}

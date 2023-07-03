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
    gnomeExtensions.tiling-assistant
    gnomeExtensions.openweather
    gnomeExtensions.ddterm
    gnomeExtensions.compiz-windows-effect
    gnomeExtensions.vitals
    gnomeExtensions.tophat
    gnomeExtensions.dash-to-panel
    gnomeExtensions.quick-settings-tweaker
    gnomeExtensions.burn-my-windows

    obsidian
    spotify
    kitty
    #zoom-us
  ];

}

{
  dconf = {
    enable = true;

    settings = {
      "org/gnome/mutter" = {
        experimental-features = [ "scale-monitor-framebuffer" ];
      };

      "org/gnome/desktop/peripherals/keyboard" = {
        "delay" = 250;
        "repeat-interval" = 20;
      };

      "org/gnome/desktop/interface" = {
        "enable-hot-corners" = false;
      };

      "org/gnome/mutter" = {
        "edge-tiling" = true;
      };

      "org/gnome/desktop/input-sources" = {
        "xkb-options" = ["caps:ctrl_modifier"];
      };
    };
  };
}


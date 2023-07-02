{ lib, ...}:
{
  dconf = {
    enable = true;

    settings = {
      "org/gnome/mutter" = {
        experimental-features = [ "scale-monitor-framebuffer" ];
      };

      "org/gnome/desktop/peripherals/keyboard" = {
        delay = lib.hm.gvariant.mkUint32 250;
        repeat-interval = lib.hm.gvariant.mkUint32 20;
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

      "org/gnome/shell" = {
        enabled-extensions = [
          "tiling-assistant@leleat-on-github"
          "openweather-extension@jenslody.de"
          "system-monitor@paradoxxx.zero.gmail.com"
          "Vitals@CoreCoding.com"
          "tophat@fflewddur.github.io"
          "dash-to-panel@jderose9.github.com"
          "burn-my-windows@schneegans.github.com"
        ];
      };
    };
  };
}


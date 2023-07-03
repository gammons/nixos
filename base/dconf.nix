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
        clock-show-weekday = true;
      };

      "org/gnome/mutter" = {
        "edge-tiling" = false;
      };

      "org/gnome/desktop/input-sources" = {
        "xkb-options" = ["caps:ctrl_modifier"];
      };

      "org/gnome/desktop/wm/keybindings" = {
        switch-to-workspace-1 = ["<Super>1"];
        switch-to-workspace-2 = ["<Super>2"];
        switch-to-workspace-3 = ["<Super>3"];
        switch-to-workspace-4 = ["<Super>4"];

        move-to-workspace-1 = ["<Shift><Super>1"];
        move-to-workspace-2 = ["<Shift><Super>2"];
        move-to-workspace-3 = ["<Shift><Super>3"];
        move-to-workspace-4 = ["<Shift><Super>4"];

        minimize = [""];
        close = ["<Shift><Super>q"];
      };

      "org/gnome/shell/extensions/dash-to-panel" = {
        panel-positions = "{\"0\":\"TOP\"}";
      };

      "org/gnome/settings-daemon/plugins/color" = {
        night-light-enabled = true;
        night-light-temperature = lib.hm.gvariant.mkUint32 4550;
      };

      "org/gnome/shell" = {
        enabled-extensions = [
          "tiling-assistant@leleat-on-github"
          "openweather-extension@jenslody.de"
          "quick-settings-tweaks@qwreey"
          "system-monitor@paradoxxx.zero.gmail.com"
          "Vitals@CoreCoding.com"
          "tophat@fflewddur.github.io"
          "dash-to-panel@jderose9.github.com"
          "forge@jmmaranan.com"
        ];
      };
    };
  };
}


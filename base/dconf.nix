{ lib, ...}:
{
  dconf = {
    enable = true;

    settings = {
      "org/gnome/mutter" = {
        experimental-features = [ "scale-monitor-framebuffer" ];
      };

      "org/gnome/desktop/peripherals/keyboard" = {
        delay = lib.hm.gvariant.mkUint32 300;
        repeat-interval = lib.hm.gvariant.mkUint32 20;
      };

      "org/gnome/desktop/interface" = {
        enable-hot-corners = false;
        clock-show-weekday = true;
        show-battery-percentage = true;
      };

      "org/gnome/mutter" = {
        "edge-tiling" = false;
      };

      "org/gnome/desktop/input-sources" = {
        "xkb-options" = ["caps:ctrl_modifier"];
      };

      "org/gnome/desktop/wm/keybindings" = {
        switch-to-workspace-1 = ["<Alt>1"];
        switch-to-workspace-2 = ["<Alt>2"];
        switch-to-workspace-3 = ["<Alt>3"];
        switch-to-workspace-4 = ["<Alt>4"];

        move-to-workspace-1 = ["<Shift><Alt>1"];
        move-to-workspace-2 = ["<Shift><Alt>2"];
        move-to-workspace-3 = ["<Shift><Alt>3"];
        move-to-workspace-4 = ["<Shift><Alt>4"];
        show-screenshot-ui = ["F10"];

        minimize = [""];
        close = ["<Shift><Alt>q"];
      };

      "org/gnome/shell/extensions/dash-to-panel" = {
        panel-positions = "{\"0\":\"TOP\"}";
        show-favorites = false;
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

      "org/gnome/settings-daemon/plugins/media-keys" = {
        play = ["<Alt>F5"];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        binding = "<Alt>Return";
        command = "/run/current-system/sw/bin/kitty";
        name = "Launch Kitty";
      };
    };
  };
}


{
  config,
  lib,
  ...
}:
with lib;
with lib.custom; let
  cfg = config.suites.desktop;
in {
  options.suites.desktop = with types; {
    enable = mkBoolOpt false "Enable the desktop suite";
  };

  config = mkIf cfg.enable {
    apps = {
      firefox = enabled;
      floorp = enabled;
      spicetify = enabled;
      vscode = enabled;
    };
    desktop = {
      hyprland = enabled;
      xfce = enabled;
      xmonad = enabled;
      addons = {
        alacritty = enabled;
        bemenu = disabled;
        foot = disabled;
        kitty = disabled;
        rofi = disabled;
        st = disabled;
        swww = enabled;
        waybar = enabled;
        wezterm = disabled;
        wofi = enabled;
        xdg-portal = enabled;
      };
    };
    services.xserver = {
      enable = true;
      displayManager.gdm = enabled;
    };
  };
}

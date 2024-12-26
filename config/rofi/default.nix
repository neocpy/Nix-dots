{ config, pkgs, ... }:
{
  home.file = {
    ".config/rofi/notification.rasi".source = ./notification.rasi;
    ".config/rofi/clipboard.rasi".source = ./clipboard.rasi;
    ".config/rofi/quickapps.rasi".source = ./quickapps.rasi;
    ".config/rofi/selector.rasi".source = ./selector.rasi;
    ".config/rofi/theme.rasi".source = ./theme.rasi;
    ".config/rofi/wallbash.rasi".source = ./wallbash.rasi;
  };

  programs.rofi = {
    enable = true;
  };

}

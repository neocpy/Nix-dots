{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.

  imports = [
    ./config/default.nix
  ];

  home = {

    username = "sophos";
    homeDirectory = "/home/sophos";

    stateVersion = "24.11"; # Please read the comment before changing.
    packages = [
    ];

    file = {
    };

    sessionVariables = {
      EDITOR = "emacs";
    };
  };

  programs = {
    home-manager.enable = true;

    bash = {
      enable = true;
      #shellAliases = myAliases;
    };

    firefox.enable = true;
  };
}


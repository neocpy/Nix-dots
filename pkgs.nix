{ config, pkgs, ... }:
{

   environment.systemPackages = with pkgs; [
   #Apps
     cmus
     vesktop
     thunderbird
     dolphin
     tor-browser
     easytag
   #Editors
     emacs
     neovim
   #Terminal
     alacritty
     fastfetch
     jq
     gh
     parallel
   #Utility
     rofi-wayland
     nix-prefetch
     unzip
     unrar
     btop
     git
     wget
     curl
   #Filesystem
     btrfs-progs
     ntfs3g
   #General Dependecies
     coreutils
     fd
     libclang
     python3
     clang-tools
     cmake
     gnumake
     libgcc
     xdg-utils
     sqlite
     graphviz
     shellcheck
     nixfmt-rfc-style
     emacsPackages.vertico
     emacsPackages.websocket
   #Other
     texliveFull
     auctex
     ghostscript
   #Services
     pavucontrol
     wireplumber
     easyeffects
     udiskie
     syncthing
   #Wayland Dependencies
     egl-wayland
     wayland-protocols
     #-------------------------
     # envsubst
     # imagemagick
     # libsForQt5.qt5.qtwayland
     # libsForQt5.qt5.qtgraphicaleffects
     # grimblast
     # swappy
   ];

  programs = {
    hyprland ={
      enable = true;
      xwayland.enable = true;
    };
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
      sha256 = "0xd9b3hs7gql2k2c4h324cisbawlid71n2db2bdajqr3gqgz4lfd";
    }))
  ];

  fonts = {
    packages = with pkgs; [
      nerdfonts
      font-awesome
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      material-icons
      jetbrains-mono
      # nerd-fonts.jetbrains-mono
    ];
  };
}


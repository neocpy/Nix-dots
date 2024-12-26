{pkgs, ...}:
{
  stylix = {
    enable = true;
    polarity = "dark";
    image = ./../walls/boat-turqoise-water.jpg;

    fonts = {
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Fonts Serif";
      };

      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Fonts Sans";
      };

      monospace = {
        package = pkgs.noto-fonts;
        name = "Noto Sans Mono";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        terminal = 12;
	applications = 12;
	desktop = 12;
	popups = 12;
      };
    };

    targets = {
      feh.enable = true;
      gnome.enable = true;
      #grub.enable = true;
      gtk.enable = true;
      spicetify.enable =true;
    };
  };
}

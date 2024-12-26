{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

   wallust.url = "git+https://codeberg.org/explosion-mental/wallust?ref=master";

  };

  outputs = { self, nixpkgs, home-manager, ... }: 
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations = {
        archie = lib.nixosSystem {
	  inherit system;
	  modules = [
	    ./system/configuration.nix
	  ];
	};
      };
      homeConfigurations = {
        sophos = home-manager.lib.homeManagerConfiguration {
	  inherit pkgs;
	  modules = [ ./home.nix ];
	};
      };
    };
}

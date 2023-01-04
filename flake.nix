{
  description = "My Custom NixOS Configuration";

  inputs = {
    colmena = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:zhaofengli/colmena";
    };

    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager";
    };

    kmonad = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:kmonad/kmonad?dir=nix";
    };

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    colmena,
    home-manager,
    kmonad,
    nixpkgs,
    self,
    ...
  } @ inputs: let
    pkgs = nixpkgs.legacyPackages.${system};
    system = "x86_64-linux";
  in {
    colmena = import ./hive.nix {inherit inputs pkgs;};

    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        colmena.packages.${system}.colmena
      ];
    };
  };
}

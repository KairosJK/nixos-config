{
  inputs,
  pkgs,
  ...
}: let
  mkSystem = systemFiles: homeManagerFiles: tags: user: host: {
    deployment = {
      inherit tags;
      allowLocalDeployment = true;
      privilegeEscalationCommand = ["doas"];
      targetUser = user;
      targetHost = host;
    };

    imports =
      [
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager = {
            extraSpecialArgs = {
              themes = import ./themes;
              inherit stateVersion;
              inherit user;
            };
            useGlobalPkgs = true;
            users.${user} = {
              imports = homeManagerFiles;
            };
            useUserPackages = true;
          };
        }
      ]
      ++ systemFiles;
  };
  stateVersion = "22.11";
  user = "ultragauche";
in {
  meta = {
    nixpkgs = pkgs;
    specialArgs = {
      inherit inputs stateVersion user;
    };
  };

  desktop =
    mkSystem
    [./nixos/shared-configuration.nix ./nixos/desktop/configuration.nix]
    [./nixos/shared-home-manager.nix ./nixos/desktop/home-manager.nix]
    ["desktop"]
    user
    "192.168.2.25";

  laptop =
    mkSystem
    [./nixos/shared-configuration.nix ./nixos/laptop/configuration.nix]
    [./nixos/shared-home-manager.nix ./nixos/laptop/home-manager.nix]
    ["laptop" "remote"]
    user
    "192.168.2.32";
}

{ self, nixpkgs, nix-darwin, home-manager, nix-homebrew
, homebrew-core, homebrew-cask, homebrew-bundle, ... }@inputs:

hostId:
let
  user = "m2vn";
  hostConfig = import ../hosts/${hostId}.nix;
in
nix-darwin.lib.darwinSystem {
  specialArgs = { inherit self inputs user; };
  modules = [
    ../modules/darwin
    hostConfig.darwin

    home-manager.darwinModules.home-manager
    {
      home-manager = {
        useGlobalPkgs = true;
        backupFileExtension = "backup";
        users.${user} = import ../home/home-manager.nix;
      };
    }

    nix-homebrew.darwinModules.nix-homebrew
    {
      nix-homebrew = {
        enable = true;
        inherit user;
        taps = {
          "homebrew/homebrew-core" = homebrew-core;
          "homebrew/homebrew-cask" = homebrew-cask;
          "homebrew/homebrew-bundle" = homebrew-bundle;
        };
        mutableTaps = false;
        autoMigrate = true;
      };
    }
  ];
}
{
  self,
  nixpkgs,
  nix-darwin,
  home-manager,
  nix-homebrew,
  homebrew-core,
  homebrew-cask,
  homebrew-bundle,
  anomalyco-tap,
  ariga-tap,
  ...
}@inputs:

hostId:
let
  user = "tuannhm";
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
          "anomalyco/homebrew-tap" = anomalyco-tap;
          "ariga/homebrew-tap" = ariga-tap;
        };
        mutableTaps = false;
        autoMigrate = true;
      };
    }
  ];
}

{ config, inputs, ... }:

{
  imports = [
    ./zsh.nix
    ./fish.nix
    ./starship.nix
    ./git.nix
    ./mise.nix
  ];

  xdg.configFile = {
    "ghostty/config".text = builtins.readFile ./ghostty/config;
  };

  home.stateVersion = "25.11";
}

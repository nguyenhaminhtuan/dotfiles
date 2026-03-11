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
    "direnv/direnv.toml".text = builtins.readFile ./direnv/direnv.toml;
    "direnv/direnvrc".text = builtins.readFile ./direnv/direnvrc;
  };

  home.stateVersion = "25.11";
}

{ pkgs, ... }:

{
  programs.mise = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    globalConfig = pkgs.lib.importTOML ./starship/mise.toml;
  }
}
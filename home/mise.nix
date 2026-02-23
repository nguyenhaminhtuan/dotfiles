{ pkgs, ... }:

{
  programs.mise = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    globalConfig = pkgs.lib.importTOML ./mise/mise.toml;
  }
}
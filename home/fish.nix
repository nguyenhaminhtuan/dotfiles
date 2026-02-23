{ ... }:

let
  aliases = {
    cat   = "bat";
    code  = "code-insiders";
    k     = "kubectl";
    tree  = "eza --tree";
  };

  abbrs = {
    dco = "docker compose";
  };
in
{
  home.shellAliases = aliases // abbrs;

  programs.fish = {
    enable = true;
    shellAbbrs = abbrs;

    shellInit = ''
      set -g fish_greeting
      
      /opt/homebrew/bin/brew shellenv
      starship init fish | source
      mise activate fish | source
      direnv hook fish | source
      zoxide init fish | source
      fzf --fish | source
    '';

    functions = {
      tableplus = "open -a TablePlus $argv";

      # Nix helpers
      nix-switch = "darwin-rebuild switch --flake ~/.config/dotfiles";
      nix-update = "nix flake update --flake ~/.config/dotfiles";
    };
  };
}
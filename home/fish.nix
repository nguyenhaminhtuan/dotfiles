{ ... }:

let
  aliases = {
    cat = "bat";
    code = "code-insiders";
    k = "kubectl";
    tree = "eza --tree";
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

      set --global --export HOMEBREW_PREFIX "/opt/homebrew";
      set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
      set --global --export HOMEBREW_REPOSITORY "/opt/homebrew/Library/.homebrew-is-managed-by-nix";
      fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
      if test -n "$MANPATH[1]"; set --global --export MANPATH \'\' $MANPATH; end;
      if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;

      starship init fish | source
      # mise activate fish | source
      direnv hook fish | source
      zoxide init fish | source
      fzf --fish | source
    '';

    functions = {
      tableplus = "open -a TablePlus $argv";

      # Nix helpers
      nix-switch = "sudo darwin-rebuild switch --flake ~/.config/dotfiles";
      nix-update = "nix flake update --flake ~/.config/dotfiles";
    };
  };
}

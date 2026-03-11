{ ... }:

let
  aliases = {
    code = "code-insiders";
    k = "kubectl";
    tree = "eza --tree";
    ll = "eza -l";
    la = "eza -la";
  };

  abbrs = {
    dco = "docker compose";
    ga = "git add";
    gaa = "git add --all";
    gc = "git commit";
    gcm = "git commit -m";
    gca = "git commit --ammend";
    gs = "git status";
    gd = "git diff";
    gco = "git checkout";
  };
in
{
  home.shellAliases = aliases // abbrs;

  programs.fish = {
    enable = true;
    shellAbbrs = abbrs;

    interactiveShellInit = builtins.readFile ./fish/config.fish;

    functions = {
      tableplus = "open -a TablePlus $argv";
      zcode = "code (zoxide query -- $argv)";

      # Nix helpers
      nix-switch = "sudo darwin-rebuild switch --flake ~/.config/dotfiles";
      nix-update = "nix flake update --flake ~/.config/dotfiles";
    };
  };
}

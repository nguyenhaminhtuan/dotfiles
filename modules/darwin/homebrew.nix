{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };

    brews = [
      # Shell and prompts
      # "zsh"
      # "fish"
      # "starship"

      #  Alternative commands
      "bat" # cat
      "bottom" # top
      "eza" # ls
      "fd" # find
      "ripgrep" # grep
      "zoxide" # cd
      "xh" # httpie

      # Command tools
      "tmux"
      "zellij"
      "fzf"
      "watch"
      "wget"
      "jq"
      "yq"
      "tree"
      "gnupg"
      "killport"
      "atuin"

      # Development
      # "git"
      "gh"
      "biome"
      "anomalyco/tap/opencode"
      "d2"
      "ariga/tap/atlas"
      "nixfmt"

      # Management
      # "mise"
      "direnv"
      "ni"
      "uv"

      # Infra & Cloud
      "act"
      "awscli"
      "lima"
      "colima"
      "docker"
      "docker-buildx"
      "docker-compose"
      "helm"
      "k3d"
      "kubernetes-cli"
      "qemu"
      "cloud-sql-proxy"
    ];

    casks = [
      # Browsers
      "brave-browser"
      "google-chrome"
      "firefox"

      # Fonts
      "font-fira-code"
      "font-fira-code-nerd-font"
      "font-jetbrains-mono"
      "font-jetbrains-mono-nerd-font"
      "font-monaspace"
      "font-monaspace-nf"

      # Developments
      "visual-studio-code@insiders"
      "ghostty"
      "yaak"
      "orbstack"
      "tableplus"
      "gcloud-cli"
      "figma"
      "claude"

      # Productivity & Communication
      "obsidian"
      "slack"

      # Utils
      "1password"
      "1password-cli"
      "cloudflare-warp"
      "raycast"

      # VM and tools
      "multipass"
      "utm"
    ];
  };
}

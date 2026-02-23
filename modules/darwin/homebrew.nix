{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };

    taps = [
      "anomalyco/tap"
      "ariga/tap"
    ];

    brews = [
      # Shell and prompts
      "zsh"
      "fish"
      "starship"

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
      "git"
      "gh"
      "biome"
      "opencode"
      "d2"
      "atlas"

      # Management
      "mise"
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
      "font-monaspace"

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
      "cleanshot"
      "raycast"

      # VM and tools
      "multipass"
      "utm"
    ];
  };
}
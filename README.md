# Dotfiles

## Setup

1. Install the Command Line Tools for Xcode

```bash
xcode-select --install
```

2. Install Nix using Determinate Nix Installer

https://docs.determinate.systems/

3. Clone repository

```bash
git clone https://github.com/nguyenhaminhtuan/dotfiles.git ~/.config/dotfiles
```

4. First build run

```bahs
sudo nix run nix-darwin -- switch --flake ~/.config/dotfiles
```

5. Future build run

```sh
sudo darwin-rebuild switch --flake ~/.config/dotfiles
```

{
  self,
  pkgs,
  user,
  config,
  ...
}:

{
  imports = [
    ./system-defaults.nix
    ./homebrew.nix
  ];

  # Using Determinate Nix installer
  nix.enable = false;

  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;

  system.primaryUser = user;
  system.stateVersion = 1;
  system.configurationRevision = self.rev or self.dirtyRev or null;

  environment.systemPackages = [ pkgs.vim ];
  environment.shells = [ pkgs.fish ];

  programs.zsh.enable = true;

  programs.fish = {
    enable = true;
    # Disable brew shellenv injection - already cached in home-manager fish config
    interactiveShellInit = "";
  };

  # Use Touch ID for sudo authentication
  security.pam.services.sudo_local = {
    touchIdAuth = true;
    reattach = true; # Works in tmux/screen
  };

  users.knownUsers = [ "${user}" ];

  users.users.${user} = {
    uid = 501;
    home = "/Users/${user}";
    shell = pkgs.fish;
  };
}

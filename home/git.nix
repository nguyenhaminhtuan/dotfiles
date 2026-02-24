{ ... }:

{
  programs.git = {
    enable = true;

    lfs.enable = true;

    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGQrGII6rrxU+pAySxEJBJINvZ6hy0s6wEtJ7QyDUEUN";
      signByDefault = true;
    };

    ignores = [
      ".DS_Store"
      "npm-debug.log*"
      "yarn-debug.log*"
      "yarn-error.log*"
      ".pnpm-debug.log*"
    ];

    settings = {
      user = {
        name = "Nguyễn Hà Minh Tuấn";
        email = "49480194+nguyenhaminhtuan@users.noreply.github.com";
      };

      # SSH signing
      commit.gpgsign = true;
      gpg.format = "ssh";
      gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";

      core.editor = "vim";
      init.defaultBranch = "main";
    };
  };
}

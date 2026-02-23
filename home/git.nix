{ ... }:

{
  programs.git = {
    enable = true;

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

      core.editor = "vim";
      init.defaultBranch = "main";
    };
  };
}

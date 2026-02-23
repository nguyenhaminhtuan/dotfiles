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
      };

      init.defaultBranch = "main";
    };
  };
}
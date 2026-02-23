{ user, ... }:

{
  system.defaults = {
    dock = {
      tilesize = 32;
      autohide = false;
      show-recents = false;
      show-process-indicators = true;
      orientation = "bottom";
      persistent-apps = [
        "/System/Applications/Apps.app"
        "/Applications/Safari.app"
        "/Applications/Chrome.app"
        "/Applications/Slack.app"
        "/Applications/TablePlus.app"
        "/Applications/OrbStack.app"
        "/Applications/Yaak.app"
        "/Applications/Obsidian.app"
        "/Applications/Visual Studio Code - Insiders.app"
        "/Applications/Ghostty.app"
        "/Applications/UTM.app"
      ];
      persistent-others = [ "/System/Applications/System Settings.app" ];

      # Disable hot corners
      wvous-bl-corner = 1;
      wvous-br-corner = 1;
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
    };

    finder = {
      # Open Finder in the home directory by default
      NewWindowTarget = "Home";
      AppleShowAllExtensions = true;
    };

    NSGlobalDomain = {
      ApplePressAndHoldEnabled = false;
      AppleKeyboardUIMode = 2;

      AppleShowAllExtensions = true;

      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;

      InitialKeyRepeat = 15;
      KeyRepeat = 2;
    };
  };

  # User-specific defaults
  home-manager.users.${user}.targets.darwin.defaults = {
    # Display Finder in list view by default
    "com.apple.finder" = {
      FXPreferredViewStyle = "Nlsv";
    };

    # Disable the "reveal desktop" feature when clicking on the desktop
    "com.apple.WindowManager" = {
      EnableStandardClickToShowDesktop = false;
    };

    # New documents in TextEdit are plain text
    "com.apple.TextEdit" = {
      RichText = false;
    };
  };
}

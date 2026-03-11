set -g fish_greeting

if test -d "/opt/homebrew"
    set -gx HOMEBREW_PREFIX "/opt/homebrew";
    set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
    set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
    set -q PATH; or set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
    set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
    set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;
end

set -q PATH; or set PATH ''; set -gx PATH  "$HOME/.local/bin" $PATH;

fish_add_path $HOMEBREW_PREFIX/share/google-cloud-sdk/bin

if set -q GHOSTTY_RESOURCES_DIR
    source "$GHOSTTY_RESOURCES_DIR/shell-integration/fish/vendor_conf.d/ghostty-shell-integration.fish"
end

starship init fish | source
# mise activate fish | source
direnv hook fish | source
zoxide init fish | source
fzf --fish | source
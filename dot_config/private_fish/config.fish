# Alias definitions:
source ~/.config/fish/aliases.fish

if test -n "$DESKTOP_SESSION"
    set (gnome-keyring-daemon --start | string split "=")
end

# When closing a window, check to see if its Steam
# Minimize steam, otherwise kill anything else
if [ "$(hyprctl activewindow -j | jq -r ".class")" = "Steam" ]; then
    xdotool getactivewindow windowunmap
else
    hyprctl dispatch killactive ""
fi

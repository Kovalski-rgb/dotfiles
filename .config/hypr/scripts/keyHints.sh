#!/bin/bash

keybindings=$(cat <<'EOF'
ESC             | Closes this window
ALT ENTER       | Toggles Fullscreen
CONTROL SHIFT S | Screenshot
CONTROL SHIFT D | Color Picker
   H           | Opens this popup
   ENTER       | Terminal
   D           | App Launcher
   W           | Kills active window
   V           | Toggles floating window
   J           | Toggles window split
   ←↑→↓        | Changes Focused Window
   [1-5]       | Changes Workspace
   ALT ←→↑↓    | Changes focused monitor
   CTRL ←→↑↓   | TODO Resize focused window 
   SHIFT [1-5] | Moves focused window to a relative workspace 
EOF
)

formatted=$(echo -e "$keybindings" | column -s '|' -t)
echo -e "$formatted" | rofi -dmenu -p "Key Bindings" 

# todo
#    Alt V       | Clipboard Menu (cliphist)
#    W           | Choose wallpaper (Wallpaper Menu)
#    SHIFT W     | Reload Waybar
#    SHIFT S     | Screenshot Menu
# CTRL ALT L      | screen lock (hyprlock)
# CTRL ALT Del    | Power Menu
#    F           | Fullscreen (Toggles to full screen)


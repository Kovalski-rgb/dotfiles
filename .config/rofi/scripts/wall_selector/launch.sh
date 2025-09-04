path=~/.config/hypr/wallpapers/
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
focused_monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')

img=$(ls -d $path* | while read A ; do  echo -en "$A\x00icon\x1f$A\n"; done | rofi -dmenu -config $script_dir/settings.rasi)

echo selected = $img

hyprctl hyprpaper reload $focused_monitor,$img

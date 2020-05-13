xmodmap -e "clear lock"
xmodmap -e "clear control"
xmodmap -e "keycode 9 = Caps_Lock"
xmodmap -e "keycode 66 = Control_L"
xmodmap -e "keycode 37 = Control_R"
xmodmap -e "add lock = Caps_Lock"
xmodmap -e "add control = Control_L"
xmodmap -e "add control = Control_R"
xmodmap -e "keycode 999 = Escape"
xcape -e 'Control_L=Escape'
exec i3

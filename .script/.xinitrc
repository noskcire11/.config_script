setxkbmap -option caps:swapescape
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 999 = Escape"
xcape -e 'Control_L=Escape'
exec i3

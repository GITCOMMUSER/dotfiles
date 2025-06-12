[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


export XCURSOR_THEME="Night Diamond (Blue)"
export XCURSOR_SIZE=24


export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
export QT_QPA_PLATFORM=xcb
exec dbus-run-session bspwm

#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

./.config/bspwm/bspwmrc

# invoke global X session script
. /etc/X11/Xsession

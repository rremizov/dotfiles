#!/bin/bash

xset mouse 2 0
xrdb -merge ~/.Xdefaults
xrdb -merge ~/XTerm
$HOME/.init-cache.sh &
yeahconsole &
xscreensaver -no-splash &
eval $(gpg-agent --daemon)

[ -f ~/.xinitrc-local ] && . ~/.xinitrc-local

exec awesome

#!/bin/bash

xrdb -merge ~/.Xdefaults
xrdb -merge ~/XTerm
$HOME/.init-cache.sh &
yeahconsole &
dropbox start
wuala &
SpiderOak &
pidgin &
xscreensaver -no-splash &
exec awesome

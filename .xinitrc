#!/bin/bash

xrdb -merge ~/.Xdefaults
xrdb -merge ~/XTerm
yeahconsole &
dropbox start
SpiderOak &
pidgin &
xscreensaver -no-splash &
exec awesome

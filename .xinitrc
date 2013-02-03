#!/bin/bash

xrdb -merge ~/.Xdefaults
xrdb -merge ~/XTerm
yeahconsole &
dropbox start
xscreensaver -no-splash &
exec awesome

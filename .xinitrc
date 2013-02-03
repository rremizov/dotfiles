#!/bin/bash

yeahconsole &
dropbox start
xscreensaver -no-splash &
exec awesome
xrdb -merge ~/XTerm

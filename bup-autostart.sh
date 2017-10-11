#!/bin/sh

set -e

date >> $HOME/bup.log

xset s off # don't activate screensaver
xset -dpms # disable DPMS (Energy Star) features.
xset s noblank # don't blank the video device

chromium-browser --start-fullscreen "http://login.badmintonticker.de/ticker/bup/#btde&display&court=1&dm_style=teamcourt"

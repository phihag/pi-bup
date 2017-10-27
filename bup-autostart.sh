#!/bin/sh

set -e

date >> $HOME/bup.log

xset s off # don't activate screensaver
xset -dpms # disable DPMS (Energy Star) features.
xset s noblank # don't blank the video device

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
chromium-browser --start-fullscreen --fast "http://login.badmintonticker.de/ticker/bup/#btde&display&court=1&dm_style=teamcourt"

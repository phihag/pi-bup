#!/bin/sh

set -e

date >> $HOME/bup.log

xset s off # don't activate screensaver
xset -dpms # disable DPMS (Energy Star) features.
xset s noblank # don't blank the video device

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences

# badmintonticker
# -chromium-browser --start-fullscreen --fast "https://badmintonticker.de/ticker/bup/#btde&display&court=1&dm_style=teamcourt"

# bts tournaments
chromium-browser --start-fullscreen --fast "https://10.10.1.2:4000/d"

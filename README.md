# Raspberry Pi configuration for bup

1. Install [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) with a desktop.
2. Recommended: Touch `/boot/ssh` (or enable SSH server in the GUI under _Raspberry Pi Configuration_ → _Interfaces_). All further steps can be done with all machines at once via [clusterssh](https://github.com/duncs/clusterssh). Alternatively, you can do
3. Copy [bup-autostart.sh](bup-autostart.sh) to `~`.
4. Adapt the start URL in bup-autostart.sh as needed. Refer to the [URL documentation for bup](https://raw.githubusercontent.com/phihag/bup/master/doc/URLs.txt) on how to specify various presets.
4. Make it executable: `chmod a+x ~/bup-autostart.sh`.
5. Copy [bup.desktop](bup.desktop) to `~/.config/autostart/`.
6. Reboot to check.

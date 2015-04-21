#!/bin/sh

# this script runs whenever the elgato
# dock is connected

# disable wifi
networksetup -setairportpower en0 off

# connect magic trackpad (requires blueutil)
/usr/local/bin/blueutil power 1
#
# notify user of what happened
# osascript -e 'display notification "Elgato Thunderbolt dock was connected" with title "Connected dock"'
/Users/romeovs/.bin/notify -t "Connected to dock" "Elgato Thunderbolt dock succesfully connected"

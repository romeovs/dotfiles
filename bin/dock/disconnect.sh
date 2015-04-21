#!/bin/sh

# this script runs whenever the elgato
# dock is disconnected

# reenable wifi
networksetup -setairportpower en0 on

# turn of bluetooth
/usr/local/bin/blueutil power 0

# notify user of what happened
/Users/romeovs/.bin/notify -t "Disconnected dock" "Elgato Thunderbolt dock was disconnected"


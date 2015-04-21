#!/usr/bin/osascript
try
    tell application "Finder"
        eject (every disk whose ejectable is true)
    end tell
    display notification "All disks were succesfully unmounted" with title "Disks ejected"
on error
    beep
    display notification "Not all disks could be unmounted" with title "Disks not ejected"
end try

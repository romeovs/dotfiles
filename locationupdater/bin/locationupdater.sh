#!/bin/sh

confhome="${XDG_CONFIG_HOME}"
if [ -z $XDG_CONFIG_HOME ]; then
  confhome="${HOME}/.config"
fi

cachehome="${XDG_CACHE_HOME}"
if [ -z $XDG_CACHE_HOME ]; then
  cachehome="${HOME}/.cache"
fi

conf="${confhome}/locationupdater/locations"
logfile="${cachehome}/locationupdater.log"

log() {
  echo "$(date)" "$@" >> "${logfile}"
}

# read ssid from command line arguments
if [ $# -ge 1 ]; then
  ssid="$1"
else
  # get the ssid
  airport=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)
  if [ "$airport" = "AirPort: Off" ]; then
    ssid="<disabled>"
    echo "$(date)" "Airport is off, not switching anything" >> "${log}"
    exit 0
  else
    ssid=$(echo "${airport}" | grep ' SSID:' | sed 's/ SSID: \(.*\) MCS.*/\1/' | sed 's/[ ]*SSID: //g')
  fi
fi

# do not switch if ssid is 0.0.0.0
if [ "$ssid" = "0:0:0:0:0:0 SSID:" ]; then
  log "SSID is 0:0:0:0:0:0, I ain't changing no location!"
  exit 0
fi

# get location from config file
location=$(grep "^['\"]${ssid}['\"]" "$conf" | sed -e "s/^['\"]..*['\"] [ ]*\(..*\)$/\1/g")

# fall back to * in config file
if [ "$location" = "" ]; then
  location=$(grep "\*" "$conf" | sed -e "s/\* [ ]*\(..*\)/\1/g")
fi

# fall back to default if no * is given in config
if [ "$location" = "" ]; then
  location="Automatic"
fi

# echo info
echo "SSID:     $ssid"
echo "Location: $location"

# update the location
newloc=$(/usr/sbin/scselect ${location} | sed 's/^.*(\(.*\)).*$/\1/')

# display status info
if [ "${location}" != "${newloc}" ]; then
  log "problem setting the location to '${location}' for ssid '${ssid}': falling back to '${newloc}'"
  exit 1
else
  log "the ssid is '${ssid}' switching to location '${location}'"
fi

exit 0

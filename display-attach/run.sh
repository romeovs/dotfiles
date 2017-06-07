HERE=`dirname $0`

LOCKFILE="$HERE/connected.lock"
LOGFILE="$HERE/log"

# restrict logfile to 100 lines
MAX=100
COUNT=`cat "$LOGFILE" | wc -l`
if [ $COUNT -gt $MAX ]; then
  rm -rf "$LOGFILE"
fi

# set up logfile
if [ ! -f "$LOGFILE" ]; then
  touch "$LOGFILE"
fi

log () {
  local NOW=`date +"%d/%m/%Y %T"`
  echo $NOW - $@
  echo $NOW - $@ >> "$LOGFILE"
}

connect () {
  # $HERE/change.applescript creep
  $HERE/change.applescript "term big"
  # /usr/local/bin/blueutil power 1
}

disconnect () {
  $HERE/change.applescript term
  # /usr/local/bin/blueutil power 0
}

connected () {
  if [ -f "$LOCKFILE" ]; then
    log 'Display connected, already ran connect'
  else
    log 'Display connected, running connect'
    touch "$LOCKFILE"
    connect
  fi
}

disconnected () {
  if [ -f "$LOCKFILE" ]; then
    log 'Display not connected, running disconnect'
    rm -rf "$LOCKFILE"
    disconnect
  else
    log 'Display not connected, already ran disconnect'
  fi
}

ioreg -p IOUSB | grep HHKB > /dev/null && connected || disconnected

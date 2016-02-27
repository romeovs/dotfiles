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

creep () {
  log 'Display connected, changing to `creep`'
  $HERE/change.applescript creep
}

term () {
  log 'Display not connected, changing to `term`'
  $HERE/change.applescript term
}

connected () {
  if [ -f "$LOCKFILE" ]; then
    log 'Display connected, already changed to `creep`'
  else
    touch "$LOCKFILE"
    creep
  fi
}

disconnected () {
  if [ -f "$LOCKFILE" ]; then
    rm -rf "$LOCKFILE"
    term
  else
    log 'Display not connected, already changed to `term`'
  fi
}

ioreg -p IOUSB | grep flirc > /dev/null && connected || disconnected

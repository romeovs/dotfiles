
CACHE_FILE="$XDG_CACHE_HOME/redo.cache"

if [ "$1" == "set" ]; then
  echo "export REDO_TARGET=\"$2\"" >| "$CACHE_FILE"
  echo "export REDO_CMD=\"$3\""    >> "$CACHE_FILE"
else
  source "$CACHE_FILE"
  if [ -z "$REDO_TARGET" ] || [ -z "$REDO_CMD" ]; then
    echo "REDO_TARGET or REDO_CMD not set."
    exit 1
  else
    tmux send-keys -t "$REDO_TARGET" "$REDO_CMD" "Enter"
  fi
fi


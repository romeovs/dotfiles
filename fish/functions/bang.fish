function bang --on-event fish_postexec
  echo "OK"
  abbr !! $argv[1]
end

function o --description "Open a file or open the current directory"
  if count $argv > /dev/null
    open $argv
  else
    open .
  end
end

function con -d "Show the contents of a file or directory"
  for i in $argv
    if test -d $i
      ls $i
    else if test -f $i
      cat $i
    else
      echo "File or directory does not exist: $i"
      return 1
    end
  end
end

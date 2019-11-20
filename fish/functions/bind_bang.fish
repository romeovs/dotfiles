# Defined in /Users/romeo/.config/fish/functions/bind_bang.fish @ line 2
function bind_bang
	switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

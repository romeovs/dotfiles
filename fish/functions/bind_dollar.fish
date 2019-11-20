# Defined in /var/folders/15/zcyyfw_x7538z7vfg5zd85z40000gn/T//fish.4DiziO/bind_dollar.fish @ line 2
function bind_dollar
	switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

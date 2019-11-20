# Defined in /var/folders/15/zcyyfw_x7538z7vfg5zd85z40000gn/T//fish.BxrAE2/fish_user_key_bindings.fish @ line 2
function bind_p
	switch (commandline -t)
  case "!"
    commandline -t (pbpaste); commandline -f repaint
  case "*"
    commandline -i !
  end
end

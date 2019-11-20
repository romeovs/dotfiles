# Defined in /var/folders/15/zcyyfw_x7538z7vfg5zd85z40000gn/T//fish.y1QO3Y/n.fish @ line 2
function n --description 'support nnn quit and change directory'
	echo $NNN_TMPFILE
	env EDITOR="nvim -u /Users/romeo/.config/vim/vimrc -p" nnn $argv
  if test -e $NNN_TMPFILE
    source $NNN_TMPFILE
    rm $NNN_TMPFILE
  end
end

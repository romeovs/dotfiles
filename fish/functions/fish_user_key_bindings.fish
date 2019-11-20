# Defined in /var/folders/15/zcyyfw_x7538z7vfg5zd85z40000gn/T//fish.If1opw/fish_user_key_bindings.fish @ line 2
function fish_user_key_bindings
	fish_vi_key_bindings
  bind § \e
  bind -M insert \ca beginning-of-line
  bind -M insert \ce end-of-line
  bind -M insert \ck kill-line
  bind \ca beginning-of-line
  bind \ce end-of-line
  bind \ck kill-line
  bind -M insert § "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
  bind -M insert \e\[A up-or-search
  bind -M insert \e\[B down-or-search
  bind -M insert \cr re_search
	bind -M insert ! bind_bang
  bind -M insert '$' bind_dollar
  # bind -M insert 'p' bind_p
end

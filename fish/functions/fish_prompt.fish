function fish_prompt
  printf "$THEFUCK_COMMAND_MARK"
  set_color red
  printf (pwd | sed "s|$HOME|~|" | xargs -0 basename)
  printf " "

  set_color black
  if [ (whoami) = "root" ]
    printf "#"
  else
    printf "\$"
  end

  printf " "
  set_color normal
end

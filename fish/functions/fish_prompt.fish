function fish_prompt
  set_color red
  printf (pwd | sed "s|$HOME|~|" | xargs basename)
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

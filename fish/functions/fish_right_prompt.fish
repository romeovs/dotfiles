function fish_right_prompt --description "Write out the right prompt"
  set -l exit_code $status

  # mode
  switch $fish_bind_mode
    case "default"
      set_color yellow
      printf -- "--cmd--"
    case "visual"
      set_color blue
      printf vis
  end

  # unix signal
  for sig in (kill -l)
    set -l n (kill -l $sig)
    if [ $exit_code = (math $n + 128) ]
      set_color yellow
      printf " $sig"
    end
  end

  # exit code
  if [ $exit_code != 0 ]
    set_color brred
    printf " $exit_code"
  end

  # command duration
  if [ $CMD_DURATION != 0 ]
    set_color purple
    printf " "(echo "scale=3; $CMD_DURATION/1000" | bc -l)s
  end

  # git branch
  if set branch (git_branch_name)
    printf " "

    set_color white
    printf "("

    set_color normal
    echo $branch | sed "s|feature/|f.../|"

    set_color white
    printf ")"

    set_color normal
  end

  # time
  set_color black
  date "+ %H:%M:%S "

  set_color normal
end

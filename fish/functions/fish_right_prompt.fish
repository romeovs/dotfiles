set -g sigs (kill -l)

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
  set -l n (math $exit_code - 128)
  set -l sig $sigs[$n]

  set_color yellow
  printf " $sig"

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
  if set -l branch (git_branch_name)
    set_color white
    printf " ("

    set_color normal
    echo $branch | sed "s|feature/|f.../|"

    set_color white
    printf ")"

    set_color normal
  end

  if set -q VIRTUAL_ENV
    set_color brblue
    printf  " ("

    set_color blue
    printf (basename $VIRTUAL_ENV)

    set_color brblue
    printf ")"

    set_color normal
  end

  # time
  set_color black
  date "+ %H:%M:%S "

  set_color normal
end

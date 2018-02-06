function change_virtual_env --on-variable PWD
  if status --is-command-sub
    return
  end

  if set -l file (__find_virtual_env $PWD)
    vf activate (head -n 1 $file)
  else if set -q VIRTUAL_ENV
    vf deactivate
  end
end

function __find_virtual_env
  set -l path $argv[1]

  if test -f $path/.virtualenv
    echo $path/.virtualenv
    return 0
  end

  if test $path = "/"
    return 1
  end

  __find_virtual_env (dirname $path)
  return $status
end

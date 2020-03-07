# env
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

set -x GOPATH $HOME/code/go
set -x PATH $XDG_CONFIG_HOME/fisherman/re-search /usr/local/opt/python@2/bin /usr/local/opt/ruby/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/bin /usr/bin /bin /usr/local/pgsql/bin /usr/local/sbin /usr/sbin /sbin /usr/local/opt/go/libexec/bin $GOPATH/bin bin /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin $HOME/.cargo/bin $HOME/.config/bin ./node_modules/.bin $PATH

set -x GNUTERM X11
set -x HOMEBREW_PREFIX (/usr/local/bin/brew --prefix)
set -x MANPATH $HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman $MANPATH /usr/local/Cellar/pulseaudio/13.0/share/man

set -x EDITOR 'env -u VIRTUAL_ENV nvim -u /Users/romeo/.config/vim/vimrc -p'
set -x PAGER "less"
set -x LESS "-RI"
set -x LESSHISTFILE "-"

set -x GOOGLE_APPLICATION_CREDENTIALS $HOME/.config/gcloud-credential.json

# homebrew
set -x HOMEBREW_NO_EMOJI 1

# greeting
set fish_greeting

# ls
set -x LS_COLORS "di=00;31:ex=00;37:mi=00;41;30:tw=00;33"
alias ls "ls -1HhFplN --color --group-directories-first --time-style='+%Y-%m-%d %H:%M:%S' --hide='Icon?' --hide='.DS_Store' --ignore='lost+found'"
alias l "ls"
alias la "ls -lA"
alias ks "ls"
alias ka "la"
alias k "l"

# quit easily
alias q " exit"
alias qa " q"
alias :q " q"
alias q: " q"
alias :qa " q"
alias :qa! " q"
alias q: " q"
alias quit " q"

# system utilities
alias mv "mv -v"
alias cp "cp -v"
alias sudo "sudo"
alias df "df -H"
alias mkdir "mkdir -p -v"
alias rg "rg --hidden --glob '!.git' -S --colors='path:fg:green' --colors='path:style:bold' --colors='line:fg:yellow' --colors='line:fg:yellow' --colors='line:style:intense' --colors='match:fg:red' --colors='match:style:nobold' --colors='match:style:intense' --colors='match:fg:red' --type-add 'scss:*.scss' --type-add 'style:*.{scss,css}'"
alias grep "rg"
alias ag="rg"


# git
alias s="git status"
alias log="git log"
alias d="git diff"

function vim --wraps vim
  if ps aux | awk '$8~/T/' | awk '$7~/'(tty | sed s:/dev/tty::)'/' | grep nvim > /dev/null
    echo "vim already running in this shell, use fg"
  else
    eval $EDITOR "$argv"
  end
end

function e --wraps vim
  vim "$argv"
end

function run
	set_color black
	echo "Running $argv[1]..."
	set_color normal

  yarn --silent run $argv
end

function runp
	set_color black
	echo "Running $argv..."
	set_color normal

	npx concurrently "$argv"
end

function __fish_run
  if test -e package.json; and type -q jq
    jq -r '.scripts | to_entries | map("\(.key)\t\(.value | tostring)") | .[]' package.json
	else if test -e Makefile
		__fish_complete_make_targets
  else if type -q jq
    command yarn run --json 2> /dev/null | jq -r '.data.hints? | to_entries | map("\(.key)\t\(.value | tostring |.[0:20])") | .[]'
  end
end

complete -f -c run -a "(__fish_run)"
complete -f -c runp -a "(__fish_run)"


alias bytes="wc -c | numfmt --to=iec-i --suffix=B --padding=7"
abbr -a dc docker-compose

# fuck
eval (thefuck --alias | tr '\n' ';')

set fish_color_command none
set fish_color_autosuggestion 777777
set fish_color_cancel -r
set fish_color_comment 777777
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end 666666
set fish_color_error 870000
set fish_color_escape bryellow --bold
set fish_color_history_current --bold
set fish_color_host normal
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator bryellow
set fish_color_param normal
set fish_color_quote 5f8700
set fish_color_redirection blue
set fish_color_search_match bryellow --background=666666
set fish_color_selection white --bold
set fish_color_status red
set fish_color_user brgreen
set fish_color_valid_path
set fish_key_bindings fish_default_key_bindings
set fish_pager_color_completion
set fish_pager_color_description b3a06d yellow
set fish_pager_color_prefix white --bold
set fish_pager_color_progress brwhite

source $HOME/.config/fish/functions/change_virtual_env.fish

complete -f -c git -n '__fish_git_using_command rebase' -l autostash -d 'Automatic stashing'

complete -c ag -r -l ignore-dir -d 'Ignore directory'
complete -c ag -l files-with-matches -s l -d 'Only print files with matches'
complete -c ag -r -f -l after -s A -d 'Print lines after match'
complete -c ag -r -f -l before -s B -d 'Print before after match'
complete -c ag -l html -d 'Search html files only'
complete -c ag -l js -d 'Search javascript files only'
complete -c ag -l py -d 'Search python files only'
complete -c ag -l yml -d 'Search yaml files only'
complete -c ag -l json -d 'Search json files only'
complete -c ag -l css -d 'Search css files only'

tabs -2

# status --is-interactive; and source (nodenv init -|psub)

export  NNN_TMPFILE=/tmp/nnn
export  NNN_USE_EDITOR=1


# set -x DOCKER_HOST tcp://192.168.99.100:2376
# set -x DOCKER_CERT_PATH /Users/romeo/.docker/machine/machines/default
# set -x DOCKER_TLS_VERIFY 1
# set -x DOCKER_MACHINE_NAME default

# Nodenv
# See https://github.com/nodenv/nodenv#how-nodenv-hooks-into-your-shell
set -gx PATH '/Users/romeo/.nodenv/shims' $PATH
set -gx NODENV_SHELL fish
source '/usr/local/Cellar/nodenv/1.3.1/libexec/../completions/nodenv.fish'
command nodenv rehash 2>/dev/null
function nodenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (nodenv "sh-$command" $argv|psub)
  case '*'
    command nodenv "$command" $argv
  end
end

set -x ASDF_DATA_DIR ~/.config/asdf
# source /usr/local/opt/asdf/asdf.fish

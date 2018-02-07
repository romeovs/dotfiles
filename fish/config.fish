# env
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

set -x PATH /usr/local/opt/python/libexec/bin /usr/local/opt/ruby/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin $PATH

set -x GNUTERM X11
set -x HOMEBREW_PREFIX `/usr/local/bin/brew --prefix`
set -x MANPATH $HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman $MANPATH

set -x EDITOR "vim -p"
set -x PAGER "less"
set -x LESS "-RI"
set -x LESSHISTFILE "-"

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
alias grep "grep --color=auto"

function vim --wraps vim
  env VIRTUAL_ENV= nvim -u /Users/romeo/.config/vim/vimrc -p $argv
end

function e --wraps vim
  vim $argv
end 

# fuck
eval (thefuck --alias | tr '\n' ';')

set fish_color_command none
set fish_color_autosuggestion 444444
set fish_color_cancel -r
set fish_color_comment 222222
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

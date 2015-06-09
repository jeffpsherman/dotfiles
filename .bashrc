export SHELL=/usr/local/bin/bash
export EDITOR='emacsclient'
export LESS="-Nmsx4erX"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/heroku/bin:$PATH
export LSCOLORS=gxfxcxdxbxegedabagacad
export JAVA_HOME=`/usr/libexec/java_home`
export JDK_HOME=`/usr/libexec/java_home`
export RBENV_ROOT=/usr/local/var/rbenv

alias ls="ls -G"
alias ll="ls -alG"
alias more="less"
alias tree="tree -C"
alias be="bundle exec"
alias mvn-skip="mvn package -Dmaven.test.skip=true"
alias dev="cd ~/dev"
alias pi="pip install -r requirements.txt"
alias vgs="vagrant global-status --prune"
alias utc="date -u"
alias gpr="git pull --rebase"
alias emacs="emacs -nw"
alias ec="emacsclient -n"

PROMPT_DIRTRIM=2

if [ -n "$INSIDE_EMACS" ]; then
  PS1="[\w]\$ "
else
  PS1="[\t][\u:\w]\$ "
fi

# autocomplete
complete -C aws_completer aws
. /usr/local/etc/bash_completion.d/lein-completion.bash
. /usr/local/etc/bash_completion.d/tmux
. ~/make_target_completion.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


case $- in
    *i*) ;;
      *) return;;
esac


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# set bash variables
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s histappend


# enable bash_completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# set the PS1 based on whether X is running
PROMPT_COMMAND=precmd
precmd() {
  if [ "$DISPLAY" ]; then
    export PS1="$(psg)\n\$ "
  else
    export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  fi
}


# export other environment variables
export EXPERIMENTAL=yes
export EDITOR=vim
export VISUAL=vim
export CLASSPATH=".:/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH"


# change directory colors
eval $(dircolors -b)

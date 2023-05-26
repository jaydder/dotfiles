
# Configure color-scheme
COLOR_SCHEME=dark # dark/light


# --------------------------------- SETTINGS ----------------------------------
shopt -s checkwinsize
set show-all-if-ambiguous on
shopt -s autocd
shopt -s cdspell
shopt -s direxpand dirspell
shopt -s globstar
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE=?:??
PROMPT_COMMAND='history -a'
HISTFILESIZE=
HISTSIZE=
HISTTIMEFORMAT="[%F %T] "
shopt -s histappend histverify

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

HISTFILE=~/.bash_history

# Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]
then
	source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]
then
	source /etc/bash_completion
fi

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 /'
 }

# Prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] '

PS1='[\u@\h \W]$(parse_git_branch)\[\033[00m\]\$ '

# ----------------------------------- MISC -----------------------------------
export VISUAL=vim
export EDITOR=$VISUAL

# enable terminal linewrap
setterm -linewrap on 2> /dev/null

# colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-

# colorize ls
[ -x /usr/bin/dircolors ] && eval "$(dircolors -b)"


[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

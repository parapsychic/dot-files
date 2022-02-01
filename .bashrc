#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#=========NEW BASHRC=================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias neofetch='neofetch | lolcat'
alias vi='vim'
alias vim='nvim'
alias py='python3'
alias cd..='cd ..'
alias cdb='cd .. && cd'
alias cda='cd && cd'
alias yt='ytfzf -t'

export PATH="$PATH:/home/parapsychic/.bin"
export PATH="$PATH:/home/parapsychic/Development/flutter/bin"
export PATH="$PATH:/home/parapsychic/.local/share/gem/ruby/3.0.0/bin"
export CHROME_EXECUTABLE=/bin/chromium 

#PS1='\[\e[1;36m\]\u\[\e[0m\]@\[\e[1;32m\]\h \[\e[1;34m\]\w \[\e[0m\]\$ '
PS1=' \[\e[1;34m\]\w \[\e[30m\]\$ \[\e[0m\]'
# Alternative red prompt for root
#PS1='\[\e[1;31m\]\u\@\h \[\e[1;34m\]\w \[\e[0m\]\$ '

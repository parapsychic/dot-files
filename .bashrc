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
alias vim='nvim'
alias py='python3'
alias cd..='cd ..'
alias cdb='cd .. && cd'
alias cda='cd && cd'
alias yt='ytfzf -t'
alias lf='lf-uberzug'
alias cykablyat='sudo'
alias :q='exit'
alias myr='sudo $(history -p !!)'
alias flameshot='flameshot gui'
alias warp-connect='warp-cli connect'
alias warp-disconnect='warp-cli disconnect'
alias warp-status='curl https://www.cloudflare.com/cdn-cgi/trace/ | grep warp'


export PATH="$PATH:/home/parapsychic/.bin"
export PATH="$PATH:/home/parapsychic/.local/share/gem/ruby/3.0.0/bin"
export PATH="$PATH:/home/parapsychic/AndroidDevelopment/flutter/bin"
export PATH="$PATH:/home/parapsychic/AndroidDevelopment/AndroidStudio/bin"
export PATH="$PATH:/home/parapsychic/.pub-cache/bin"
export PATH="$PATH:/home/parapsychic/.local/bin"
export CHROME_EXECUTABLE=/bin/chromium 
export EDITOR=/bin/nvim


#PS1='\[\e[1;36m\]\u\[\e[0m\]@\[\e[1;32m\]\h \[\e[1;34m\]\w \[\e[0m\]\$ '
#PS1=' \[\e[1;34m\]\w \[\e[30m\]\$ \[\e[0m\]'
PS1=' \[\e[1;34m\]\w \[\e[0m\]'
# Alternative red prompt for root
#PS1='\[\e[1;31m\]\u\@\h \[\e[1;34m\]\w \[\e[0m\]\$ '


# LF ICON CONFIGURATION
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"


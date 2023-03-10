# ${HOME}/.zshenv should only be a one-liner that sources this file
# echo "source ${HOME}/.config/zsh/.zshenv" >| ${HOME}/.zshenv

# export ZDOTDIR="${HOME}/.dotfiles/zsh"
export DOTFILES="${HOME}/.dotfiles"
# Set XDG dirs
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_RUNTIME_DIR="${HOME}/.xdg"
export XDG_DATA_DIRS="${HOME}/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/share/gnome:/usr/local/share/:/usr/share/"

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR="${HOME}/Users/Desktop"
  export XDG_DOCUMENTS_DIR="${HOME}/Users/Documents"
  export XDG_DOWNLOAD_DIR="${HOME}/Users/Downloads"
  export XDG_MUSIC_DIR="${HOME}/Users/Music"
  export XDG_PICTURES_DIR="${HOME}/Users/Pictures"
  export XDG_VIDEOS_DIR="${HOME}/Users/Videos"
fi

# Add all local binary paths to the system path.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#export GOROOT="/usr/local/go/"
#export GOPATH="${HOME}/go"
#export PATH="${GOROOT}/bin:${GOPATH}/bin:${PATH}"
export PYTHONPATH="${HOME}/.local/lib/python3.10/site-packages"
export PKG_CONFIG_PATH="/usr/share/pkgconfig/"
export PASSWORD_STORE_DIR="${HOME}/.password-store"
export PASSWORD_STORE_ENABLE_EXTENSIONS="true"
export PASSWORD_STORE_EXTENSIONS_DIR="${HOME}/.password-store/.extensions"
export PASSWORD_STORE_GENERATED_LENGTH="20"
export RCLONE_PASSWORD_COMMAND="pass garbage/wsl2/rclone-deb10"
export COWPATH="${HOME}/.cowsay/cowfiles:$COWPATH"
# If you come from bash you might have to change your $PATH.
export PATH="${HOME}/.local/bin:${HOME}/.dotfiles/sh:/c/Windows/System32:$PATH"
#export PATH="${HOME}/.local/bin:${HOME}/dotfiles/sh:${HOME}/.local/lib/python3.9/site-packages:/c/Windows/System32/:$PATH"

# WSL2IP=$(/sbin/ip route | awk '/default/ { print $3 }'):0.0
WSL2IP=$(/sbin/ip route | awk '{print $3; exit;}')
# WSL2IP="`ip -4 address | grep -A1 eth0 | grep inet | cut -d' ' -f6 | cut -d/ -f1`:0.0"
# export DISPLAY=$(ipconfig.exe | awk '/IPv4/ {sub("\r",":0"); print $NF;exit}')
# export DISPLAY=192.168.1.120:0
export DISPLAY=$WSL2IP:0
# export PULSE_SERVER=tcp:"$DISPLAY"
export LIBGL_ALWAYS_INDIRECT=1
export NO_AT_BRIDGE=1
export DELTA_FEATURES='+side-by-side my-feature'
export HOMEBREW_NO_ENV_HINTS=TRUE

# thefuck
# export THEFUCK_RULES='sudo:no_command'
# export THEFUCK_EXCLUDE_RULES='git_pull:git_push'
# export THEFUCK_REQUIRE_CONFIRMATION='true'
# export THEFUCK_WAIT_COMMAND=10
# export THEFUCK_NO_COLORS='false'
# export THEFUCK_PRIORITY='no_command=9999:apt_get=100'
# export THEFUCK_HISTORY_LIMIT='2000'
# export THEFUCK_NUM_CLOSE_MATCHES='5'

## Nicer shell experience
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD; # make ls more colorful as well
export HISTSIZE=100000; # Larger bash history (allow 32?? entries; default is 500)
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups; # Remove duplicates from history. I use `git status` a lot.
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"; # Make some commands not show up in history
export HISTTIMEFORMAT='%F-%T ';
export SAVEHIST=$HISTSIZE;
export HISTFILE=$HOME/.zsh_history;
export LANG="en_US.UTF-8"; # Language formatting is still important
export LC_ALL="en_US.UTF-8"; # byte-wise sorting and force language for those pesky apps

# set options for less
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# or the short version
export LESS='-F -i -J -M -R -W -x4 -X -z-4'

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

export EDITOR=vim
export VISUAL=vim
export BROWSER="/c/Program\ Files/Mozilla\ Firefox/firefox.exe"

# Ripgrep
export RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
#export RG_PREFIX="rg --column -n --no-heading --color=always -S --max-columns=150 "

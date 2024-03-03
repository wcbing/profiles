PS1='\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

Profile_PATH=~/.config/profiles
if [ -f $Profile_PATH/shell/aliases ]; then
    . $Profile_PATH/shell/aliases
fi

# Python venv
# ----------------------------
alias newvenv="python -m venv .venv"
alias actvenv=". .venv/bin/activate"

# Proxy
# ----------------------------
alias setproxy="export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias unsetproxy="unset http_proxy https_proxy all_proxy"

# PATH
# ----------------------------
PATH="$PATH:~/.local/bin/"
PATH="$PATH:~/My/App/"
PATH="$PATH:~/node_modules/.bin/"
PATH="$PATH:~/.local/share/JetBrains/Toolbox/scripts"

export PATH
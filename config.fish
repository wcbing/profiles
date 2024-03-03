if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

set Profile_PATH ~/.config/profiles
if test -e $Profile_PATH/shell/aliases
    . $Profile_PATH/shell/aliases
end

# Python venv
# ----------------------------
alias newvenv="python -m venv .venv"
alias actvenv=". .venv/bin/activate.fish"

# Proxy
# ----------------------------
alias setproxy="export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias unsetproxy="set -e http_proxy https_proxy all_proxy"

# PATH
# ----------------------------
set PATH $PATH ~/.local/bin/
set PATH $PATH ~/My/App/
set PATH $PATH ~/node_modules/.bin/
set PATH $PATH ~/.local/share/JetBrains/Toolbox/scripts

export PATH
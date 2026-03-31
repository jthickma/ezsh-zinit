export TERM="xterm-256color"

# Load zinit plugin manager
ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# Load powerlevel10k theme
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Plugins
zinit light zsh-users/zsh-autosuggestions     # Disable if you are using Marker, otherwise enable
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions

# oh-my-zsh snippets/plugins
zinit snippet OMZP::systemd
zinit snippet OMZP::extract
zinit snippet OMZP::z
zinit snippet OMZP::sudo

# External plugins
zinit light supercrabtree/k
zinit light Aloxaf/fzf-tab

# Plugins can be added in your own config file under ~/.config/ezsh/zshrc/ like this:
# zinit light plugin-author/plugin-name
# zinit snippet OMZP::plugin-name

# Remove plugins from the default list above in your own config file using:
# zinit delete plugin-author/plugin-name

# Add to PATH to run programs installed with pipx or "pip install --user"
export PATH=$PATH:~/.local/bin

# To give this path preference instead of system paths to run the latest version of tools, add the following to your personal config. Due to security concerns this is not done by default.
# export PATH=~/.local/bin:$PATH

export PATH=$PATH:~/.config/ezsh/bin

NPM_PACKAGES="${HOME}/.npm"
PATH="$NPM_PACKAGES/bin:$PATH"

[[ -s "$HOME/.config/ezsh/marker/marker.sh" ]] && source "$HOME/.config/ezsh/marker/marker.sh"

# autoload -U compinit && compinit -C -d ~/.cache/zsh/.zcompdump        # zsh-completions
# autoload bashcompinit                 # bash completions
# bashcompinit


# QuickZsh
SAVEHIST=50000      #save upto 50,000 lines in history
#setopt hist_ignore_all_dups     # dont record duplicated entries in history during a single session

alias myip="wget -qO- https://wtfismyip.com/text"	# quickly show external ip address
alias l="ls --hyperlink=auto -lAhrtF"    # show all except . .. , sort by recent, / at the end of folders, clickable
alias e="exit"
alias ip="ip --color=auto"
## Install EZA to use this. The better ls command
alias a='eza -la --git --colour-scale all -g --smart-group --icons always'  #the new ls; add --hyperlink if you like
alias aa='eza -la --git --colour-scale all -g --smart-group --icons always -s modified -r' #sort by new


# CUSTOM FUNCTIONS

# cheat sheets (github.com/chubin/cheat.sh), find out how to use commands
# example 'cheat tar'
# for language specific question supply 2 args first for language, second as the question
# eample: cheat python3 execute external program
cheat() {
    if [ "$2" ]; then
        curl "https://cheat.sh/$1/$2+$3+$4+$5+$6+$7+$8+$9+$10"
    else
        curl "https://cheat.sh/$1"
    fi
}

# Matrix screen saver! will run if you have installed "cmatrix"
# TMOUT=900
# TRAPALRM() { if command -v cmatrix &> /dev/null; then cmatrix -sb; fi }

speedtest() {
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
}

dadjoke() {
    curl https://icanhazdadjoke.com
}

# Find geo info from IP
ipgeo() {
    # Specify ip or your ip will be used
    if [ "$1" ]; then
        curl "http://api.db-ip.com/v2/free/$1"
    else
        curl "http://api.db-ip.com/v2/free/$(myip)"
    fi
}


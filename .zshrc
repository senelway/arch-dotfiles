export ZSH="$HOME/.oh-my-zsh"
export GPG_TTY=$(tty)

alias v=nvim
alias f=fastfetch

# xset r rate 250 25
# xinput set-prop "Apple Inc. Magic Trackpad 2" "libinput Accel Speed" 0.5
# setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle

alias cdf='cd $(find ~/Projects -maxdepth 4 -type d -not -path "*/.git/*" -not -path "*/node_modules/*" | fzf)'
alias cdv='cd $(find ~/Projects -maxdepth 4 -type d -not -path "*/.git/*" -not -path "*/node_modules/*" | fzf) && nvim .'

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!{.git,node_modules,vendor,.vscode,*.log,*.pyc,*.o,*.tmp,.DS_Store,Library,
.orbstack,.password-store}"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

export EDITOR=nvim

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

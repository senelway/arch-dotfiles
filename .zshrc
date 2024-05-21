export ZSH="$HOME/.oh-my-zsh"
export GPG_TTY=$(tty)

xset r rate 250 25
xinput set-prop "Apple Inc. Magic Trackpad 2" 335 0.5

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

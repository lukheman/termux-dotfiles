# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### PLUGIN CONFIGURATION ###
## zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaa"

# aliases
alias chcolor='/data/data/com.termux/files/home/.termux/colors.sh'
alias chfont='/data/data/com.termux/files/home/.termux/fonts.sh'
alias nvimconf="nvim ~/.config/nvim"
alias chfont='/data/data/com.termux/files/home/.termux/fonts.sh'
alias chcolor='/data/data/com.termux/files/home/.termux/colors.sh'
alias c='clear'

# system
alias ls="exa --icons"
alias la="exa --icons -a"
alias lt="exa --icons --tree"
alias lta="exa --icons --tree -lgha"
alias py="python"

# folder
alias document='cd /sdcard/Document'
alias belajar='cd /sdcard/Document/belajar'
alias projek='cd /sdcard/Document/projek'
alias photo='cd /sdcard/DCIM'

# git
alias gits='git status'

gita() {
    git add $1
}

gitc() {
    git commit -m $1
}

gitd() {
    git diff $1
}

# load starship
eval "$(starship init zsh)"

# load banner
~/.banner.sh

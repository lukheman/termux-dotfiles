# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### PLUGIN CONFIGURATION ###
## zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaa"

# Cursor
# Ganti bentuk cursor menjadi underline
# printf '\e[4 q'

# aliases
alias chcolor='/data/data/com.termux/files/home/.termux/colors.sh'
alias chfont='/data/data/com.termux/files/home/.termux/fonts.sh'
alias nvimconf="nvim ~/.config/nvim"
alias chfont='/data/data/com.termux/files/home/.termux/fonts.sh'
alias chcolor='/data/data/com.termux/files/home/.termux/colors.sh'
alias c='clear'
alias document='cd /sdcard/document'
alias belajar='cd /sdcard/document/belajar'
alias bp='cd /sdcard/document/belajar/python'
alias projek='cd /sdcard/document/projek'
alias pp='cd /sdcard/document/projek/python'

# load starship
eval "$(starship init zsh)"

# load banner
~/.banner.sh

# cursor
# echo -e '\e[2 q' # Change to block
# echo -e '\e[4 q' # Change to underline
echo -e '\e[6 q' # Change to bar

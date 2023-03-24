# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
  fast-syntax-highlighting
  aliases
  git
)

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
alias nvconf='cd ~/.config/nvim'

# postgresql
alias psqlstart='pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile start'
alias psqlstop='pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile stop'

# translate-shell
alias toid='trans en:id --shell'
alias toen='trans id:en --shell'

# Auto start tmux
if [ "$TMUX" = "" ]; then tmux; fi

# load starship
eval "$(starship init zsh)"

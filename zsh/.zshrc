ZIM_HOME=~/.zim

# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# Initialize modules.
source ${ZIM_HOME}/init.zsh

# aliases
alias chcolor='/data/data/com.termux/files/home/.termux/colors.sh'
alias chfont='/data/data/com.termux/files/home/.termux/fonts.sh'
alias c='clear && tmux clear-history'
alias s='fd --type f --exclude .git --hidden | fzf-tmux -p --reverse | xargs nvim'

# system
alias ls="exa --icons --sort=extension"
alias la="exa --icons -a"
alias lta="exa --icons --tree -lgha"
alias lz="exa -l --no-time --no-permissions --no-user --sort=extension"
alias py="python"

alias bat="bat --theme=base16 --style=grid"

# folder
alias document='cd /sdcard/Document'
alias nvconf='cd ~/.config/nvim'
alias dotfiles='cd ~/dotfiles'
alias projects='cd ~/projects'

# postgresql
alias psqlstart='pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile start'
alias psqlstop='pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile stop'

# translate-shell
alias toid='trans en:id --shell --brief'
alias toen='trans id:en --shell --brief'

fdd() {
  local dir
  dir=$(
    cd &&
      fd -0 --type d --exclude node_modules |
      fzf --read0
  ) && cd ~/$dir
}

# Auto start tmux
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# load starship
eval "$(starship init zsh)"

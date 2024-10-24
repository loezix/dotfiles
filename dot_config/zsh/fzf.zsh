
eval "$(fzf --zsh)"

source "${HOME}/.local/lib/fzf-git.sh"


CATPPUCCIN_MOCHA=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

FZF_THEME=$CATPPUCCIN_MOCHA
FZF_DEFAULT_OPTS="${FZF_THEME} --ansi"

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

zstyle ':fzf-tab:*' group-colors $FZF_THEME
zstyle ':fzf-tab:*' switch-group ',' '.'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':fzf-tab:*' popup-min-size 80 12
zstyle ':fzf-tab:complete:*:*' fzf-preview '-- fd --hidden --exclude .git $realpath' # 'less ${(Q)realpath}'


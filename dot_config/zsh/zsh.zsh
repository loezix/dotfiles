# zsh settings

## env
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase

## options
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

## style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'


## bindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '\e[1;3D' beginning-of-line
bindkey '\e[1;3C' end-of-line

## aliases
alias bunx="bun x"
alias   vi="nvim"
alias   ls="eza -l --icons --group-directories-first --git --no-user --no-permissions --no-time"
alias    l="ls"
alias   ll="eza -l --icons --group-directories-first --git"
alias   la="l -a"
alias  lla="ll -a"
alias   lt="l -T -L3"
alias  llt="ll -T -L3"
alias  cat="bat --number --color=auto"
alias grep="rg"
alias mdcat="mdcat --paginate"

## plugin settings

### syntax-highlight
if [[ ! -z $FAST_HIGHLIGHT_STYLES ]]; then
  FAST_HIGHLIGHT_STYLES[path-to-dir]="fg=magenta"
fi


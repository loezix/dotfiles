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

## bindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '\e[1;3D' beginning-of-line
bindkey '\e[1;3C' end-of-line

## aliases
alias   vi="nvim"
alias   ls="eza -l --icons --group-directories-first --git --no-user --no-permissions --no-time"
alias    l="ls"
alias   ll="eza -l --icons --group-directories-first --git"
alias   la="l -a"
alias  lla="ll -a"
alias   lt="l -T -L3"
alias  llt="ll -T -L3"
alias  cat="bat --number --color=always"
alias grep="rg"

## plugin settings

### zsh-syntax-highlight
if [[ ! -z $ZSH_HIGHLIGHT_STYLES ]]; then
  ZSH_HIGHLIGHT_STYLES[path]=none
  ZSH_HIGHLIGHT_STYLES[path_prefix]=none
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
fi

## services
autoload compinit && compinit


eval "$(fzf --zsh)"

source "${HOME}/.local/lib/fzf-git.sh"


DRACULA_THEME="--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"
CATPPUCCIN_MOCHA=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

FZF_THEME=$CATPPUCCIN_MOCHA

FZF_DEFAULT_OPTS="${FZF_THEME} --ansi"
FZF_DEFAULT_COMMAND="fd --hidden --exclude .git"
FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND} --type=f"
FZF_ALT_C_COMMAND="${FZF_DEFAULT_COMMAND} --type=d"

FZF_CTRL_T_OPTS="--preview '${PREVIEW_FILE}'"
FZF_ALT_C_OPTS="--preview '${PREVIEW_DIRECTORY}'"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --hidden --exclude .git --type=d . "$1"
}

_fzf_comprun() {
  local command=$1
  shift

  case "${command}" in
    cd)			fzf --preview "${PREVIEW_DIRECTORY}" 	"$@" ;;
    export|unset)	fzf --preview "eval 'echo \$' {}"	"$@" ;;
    ssh)		fzf --preview 'dig {}'			"$@" ;;
    *)			fzf --preview "${PREVIEW_FILE}"  "$@"
  esac
}

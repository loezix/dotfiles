# ENVIRONMENT VARS

LOCAL=~/.local
RUSTICL_ENABLE=radeonsi

case $(uname -s) in
	Linux*)  CONDA_HOME="${HOME}/.local/opt/miniconda3";;
	Darwin*) CONDA_HOME="/usr/local/Caskroom/miniconda/base";;
esac

PREVIEW_FILE="bat --number --color=always --line-range :500 {}"
PREVIEW_DIRECTORY="eza --tree --color=always {} | head -200"

export PATH=$PATH:$LOCAL/bin

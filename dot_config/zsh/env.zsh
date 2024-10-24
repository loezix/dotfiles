# ENVIRONMENT VARS

LOCAL=~/.local
RUSTICL_ENABLE=radeonsi

case $(uname -s) in
	Linux*)  CONDA_HOME="${HOME}/.local/opt/miniconda3";;
	Darwin*) CONDA_HOME="/usr/local/Caskroom/miniconda/base";;
esac

export LESSOPEN='|~/.local/bin/lessfilter %s'

export PREVIEW

export EDITOR="vi"

export PATH=$PATH:$LOCAL/bin

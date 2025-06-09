export VOLTA_HOME="${LOCAL}/share/volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# bun completions
[ -s "${LOCAL}/share/bun/_bun" ] && source "${LOCAL}/share/bun/_bun"

VOLTA_HOME="$HOME/.volta"
BUN_INSTALL="${LOCAL}/share/bun"

export PATH="$BUN_INSTALL/bin:$VOLTA_HOME/bin:$PATH"

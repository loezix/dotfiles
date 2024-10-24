# bun completions
[ -s "${LOCAL}/share/bun/_bun" ] && source "${LOCAL}/share/bun/_bun"

# bun
export BUN_INSTALL="${LOCAL}/share/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

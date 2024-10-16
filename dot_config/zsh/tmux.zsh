#!/bin/sh

if [ "${TERM}" = "xterm-kitty" ]; then

  session_name="0"

  tmux has-session -t=$session_name 2> /dev/null

  if [[ $? -ne 0 ]]; then
    TMUX='' tmux new-session -d -s "$session_name"
  fi

  if [ -z "$TMUX" ]; then
    tmux attach -t "$session_name"
  else
    tmux switch-client -t "$session_name"
  fi
fi

#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# TMUX を起動する。ログインシェルでのみ実行されるので分岐はいらないかも
if [[ ! -n $TMUX ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ ! -z "$ID" ]]; then
    ID="$ID\n"
  fi
  create_new_session="Create New Session"
  ID="$ID${create_new_session}:"
  ID="`echo $ID | fzf --tac | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session && exit
  elif [[ -n "$ID" ]]; then
    tmux attach-session -t "$ID" && exit
  else
    :  # Start terminal normally
  fi
fi



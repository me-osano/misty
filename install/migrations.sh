MISTY_MIGRATIONS_STATE_PATH=~/.local/state/misty/migrations
mkdir -p $MISTY_MIGRATIONS_STATE_PATH

for file in ~/.local/share/misty/migrations/*.sh; do
  touch "$MISTY_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

#!/bin/bash

# Define source and target directories
nvim_src="./nvim"
nvim_dest="$HOME/.config/nvim"
zshrc_src="./.zshrc"
zshrc_dest="$HOME/.zshrc"
tmux_cfg_src="./tmux/.tmux.conf"
tmux_cfg_dest="$HOME/.tmux.conf"
tmux_src="./tmux"
tmux_dest="$HOME/.config/tmux"

# Define backup directory
backup_dir="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

# Backup and sync the nvim directory
if [ -d "$nvim_dest" ]; then
    echo "Backing up existing nvim directory..."
    rsync -av "$nvim_dest/" "$backup_dir/nvim_backup/"
fi
echo "Syncing /nvim to nvim..."
rsync -av --delete --exclude './nvim/pack' "$nvim_src/" "$nvim_dest" # Exclude pack directory

# Backup and sync the .zshrc file
if [ -f "$zshrc_dest" ]; then
    echo "Backing up existing ~/.zshrc file..."
    rsync -av "$zshrc_dest" "$backup_dir/.zshrc_backup"
fi
echo "Syncing /.zshrc to ~/.zshrc..."
rsync -av --delete "$zshrc_src" "$zshrc_dest"

# Backup and sync the tmux configuration file
if [ -f "$tmux_cfg_dest" ]; then
    echo "Backing up existing ~/.tmux.conf file..."
    rsync -av "$tmux_cfg_dest" "$backup_dir/.tmux.conf_backup"
fi
echo "Syncing /.tmux.conf to ~/.tmux.conf..."
rsync -av --delete "$tmux_cfg_src" "$tmux_cfg_dest"

# Backup and sync the tmux directory
if [ -d "$tmux_dest" ]; then
    echo "Backing up existing ~/.tmux directory..."
    rsync -av "$tmux_dest/" "$backup_dir/tmux_backup/"
fi
echo "Syncing /tmux to ~/.tmux..."
rsync -av --delete "$tmux_src/" "$tmux_dest"


echo "Sync completed."


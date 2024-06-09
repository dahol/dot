#!/bin/bash

# Function to clear contents of a directory
clear_directory() {
    if [ -d "$1" ]; then
        rm -rf "$1"/*
        echo "Cleared contents of $1"
    else
        echo "$1 does not exist"
    fi
}

# Clear contents of Neovim configuration directories

# Clear the .cache/nvim directory
clear_directory "$HOME/.cache/nvim"

# Clear the .local/share/nvim directory
clear_directory "$HOME/.local/share/nvim"

# Clear the .config/nvim directory
clear_directory "$HOME/.config/nvim"

echo "Neovim configuration directories contents cleared."

# Optional: Clear the .vim directory if you also want to clear Vim configuration
clear_directory "$HOME/.vim"

echo "All specified configuration directories contents cleared."


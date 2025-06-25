#!/bin/sh

# A script that can be called from Godot to open up a new file in Neovim
# For the flatpak version of Godot
flatpak-spawn --host nvim --server ./godothost --remote-send "<esc>:e $1<CR>"

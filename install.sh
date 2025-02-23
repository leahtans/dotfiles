#!/bin/zsh

# Prevent unwanted zsh files (plugins, history) to be stored in this repo
mkdir -p $HOME/.config/zsh

# Create symlinks
stow .
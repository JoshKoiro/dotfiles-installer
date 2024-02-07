#!/bin/bash

# Command required to be able to use the aliases defined in the script
shopt -s expand_aliases

# Set a temporary alias to access the repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Clone the dotfiles repo
git clone --bare git@github.com:JoshKoiro/dotfiles.git $HOME/.dotfiles

# Remove the .bashrc file so that we won't have an error when the dotfiles checkout happens
cp ~/.bashrc ~/.bashrc.bak
rm ~/.bashrc

# Checkout the debian-server branch
dotfiles checkout debian-server

# Update the config file for the repo - Don't show files that are not being tracked in the status
dotfiles config --local status.showUntrackedFiles no

# Kill hanging ssh-agent processes
pkill ssh-agent
color ${INFO} "\nPlease refresh your shell by running source ~/.bashrc\n"

#!/bin/bash

# Get git access

## Make sure git is installed
sudo apt install git

## Run script to configure ssh for Github
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/github-ssh/main/config.sh)"

# Clone the dotfiles repo
git clone --bare git@github.com:JoshKoiro/dotfiles.git $HOME/.dotfiles

# Set a temporary alias to access the repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Remove the .bashrc file so that we won't have an error when the dotfiles checkout happens
rm ~/.bashrc

# Checkout the debian-server branch
dotfiles checkout debian-server

# Update the config file for the repo - Don't show files that are not being tracked in the status
dotfiles config --local status.showUntrackedFiles no

# Kill hanging ssh-agent processes
pkill ssh-agent

# Restart bash
source ~/.bashrc

# dotfiles-installer
Install script for loading dotfiles onto a new Linux system

## Installation

First run the script to git clone the dotfiles repository using ssh
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/github-ssh/main/config.sh)"
```
Next, run the following script to automatically load the dotfile settings for a new system and/or user
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JoshKoiro/dotfiles-installer/main/install.sh)"
```
This script should not be used for existing users or systems unless your intent is to overwrite existing data.

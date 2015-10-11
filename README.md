# Common Environment 
Configuration and tooling for the CLI environment that I expect to be common on
all my workstations is managed as a git repository.

## Getting set up
This repository somewhat unusual is the intention for it to act as the home 
folder and its use of git submodules.

The follow steps will accomplish that.

```cd ~/
git clone https://github.com/jtheriault/dotfiles.git
mv dotfiles/.git ./
git pull
git submodule init```

## Configuration
### Bash
This replaces the .bashrc file to establish common settings, extensions and 
load .bash_local (if it exists) to perform similar workstation-specific tasks.

### NVM
This installs and loads nvm into each running shell to provide whatever node
version is correct for my work.

### Vim
A significant aspect of this repo is establishing my preferred VIM environment.

In addition to setting core configuration values for key mappings, the status 
line and actual text editing behavior, this installs a number of helpful
plugins.

* Pathogen
* BufOnly
* CtrlP
* NERDTree
* NERDTree git plugin
* Syntasic

#### Syntastic
In order for this syntax checker to work, it depends on external tools for each
language to be available in the $PATH. 

Ones of particular interest to me include:
* JSCS
* JSHint

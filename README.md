# This repo is based on

https://github.com/jtheriault/dotfiles

# Common Environment

Configuration and tooling for the CLI environment that I expect to be common on
all my workstations is managed as a git repository.

## Getting set up

Making this repository somewhat unusual is the intention for it to act as the home folder.

The following steps are an example of how to use it.

```bash
cd [Your favorite directory for git files]
git clone https://github.com/terodox/bashrc.git
cp -r ${PWD}/bashrc/. ~/
cd ~/
rm -rf .git
source .bashrc
```

## Configuration

### Bash

This installs an extensible .bashrc system which loads spreads configuration
across separate files in the ~/.bashrc.d/ directory.

### NVM

This installs and loads nvm into each running shell to provide whatever node
version is correct for my work.
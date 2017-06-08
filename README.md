# Common Environment 
Configuration and tooling for the CLI environment that I expect to be common on
all my workstations is managed as a git repository.

## Getting set up
Making this repository somewhat unusual is the intention for it to act as the 
home folder and its use of git submodules.

The following steps are an example of how to install it.

```bash
cd ~/
git clone https://github.com/jtheriault/dotfiles.git
mv dotfiles/.git ./
git checkout .
git submodule init
git submodule update
mkdir -p .vim/autoload
source .bashrc
```

## Configuration
### Bash
This installs an extensible .bashrc system which loads spreads configuration 
across separate files in the ~/.bashrc.d/ directory.

### NVM
This installs and loads nvm into each running shell to provide whatever node
version is correct for my work.
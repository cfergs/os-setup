# os-setup

Deploy applications and settings to windows and Linux (Fedora) OS. No more Mr ClickOps!.

## Credits

The linux firefox ansible role is taken from https://github.com/staticdev/ansible-role-firefox/tree/main. I've stripped out installing firefox itself as it doesnt work with Fedora 38

## Installation

1. Download or clone this repository to local drive.
2. Modify **vars/default.yml** with Firefox appropriate settings (Linux Only)

## Deploy - Linux

1. Run `sudo dnf install make git`
2. Install gitkraken and connect to github
3. Install homebrew
    1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
    2. `test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"`
    3. `test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`
    4. `echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc`
3. Run `make ansible-linux`
4. Enter sudo password when prompted
5. Follow manual steps for DisplayLink (including a reboot)

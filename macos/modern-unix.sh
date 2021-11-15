#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osxprep.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install zsh
brew install neovim
brew install tmux
brew install neofetch
brew install bat
brew install exa
brew install dust
brew install duf
brew install fd
brew install fzf
brew install ripgrep
brew install jq
brew install procs
brew install httpie
brew install starship

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
# Add plugins to .zshrc file
: << !
plugins=(
    git
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
)
!

# Install z.sh
curl -L https://raw.githubusercontent.com/rupa/z/master/z.sh -o ~/bin/z.sh
chmod +x ~/bin/z.sh
echo ". /path/to/z.sh" >> ~/.bash_profile

# Install 'code' command in PATH
# `Cmd+Shift+P` to open the settings and search `Shell Command: Install 'code' command in PATH`

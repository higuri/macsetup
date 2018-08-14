#!/bin/sh
# macsetup/install.sh

cd ~

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew doctor

# zsh
brew install zsh
# tmux
brew install tmux
# vim (+clipboard) 
brew install vim
# iterm2
brew cask install iterm2
# git
brew install git
# dotfiles
git clone https://github.com/higuri/dotfiles
pushd dotfiles
. install.sh
popd

# * Font: Migu 2M
# * iTerm2 config
#   iTerm2 > Preferences > General > Preferences > Load preferences from ...
#   ~/macsetup/com.googlecode.iterm2.plist

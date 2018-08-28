#!/bin/sh
# macsetup/install.sh

cd ~

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# *) vim: +clipboard
brew install zsh tmux git vim
brew cask install iterm2
# dotfiles
git clone https://github.com/higuri/dotfiles
pushd dotfiles
  . install.sh
popd

# * Font: Migu 2M
#   https://osdn.net/projects/mix-mplus-ipa/downloads/63545/migu-2m-20150712.zip/
# * iTerm2 config
#   iTerm2 > Preferences > General > Preferences > Load preferences from ...
#   ~/macsetup/com.googlecode.iterm2.plist

#!/bin/sh
# macsetup/install.sh

cd ~

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# zsh
brew install zsh 
sudo chsh -s $(which zsh) $USER
# tmux, vim(+clipboard), iterm2, git
brew install git tmux vim git
brew cask install iterm2
# font: mplus
brew tap caskroom/homebrew-fonts
brew cask install font-m-plus

# dotfiles
git clone https://github.com/higuri/dotfiles
pushd dotfiles
  . install.sh
popd

# XXX: iTerm2 Preferences
# - Profiles > Colors > Color Presets: Solarized Dark
# - Profiles > Text > Font: M+ 1mn medium 16pt
# - Profiles > Window > Columns x Rows: 160 x 40

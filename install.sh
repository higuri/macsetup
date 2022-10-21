#!/bin/sh
# macsetup/install.sh

cd ~

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# zsh
brew install zsh
# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

sudo chsh -s $(which zsh) $USER
# tmux, vim(+clipboard), iterm2, git
brew install git tmux vim git
brew install --cask iterm2
# font: mplus
brew tap homebrew/cask-fonts
brew install --cask font-m-plus-1
brew install --cask font-m-plus-1-code

# dotfiles
git clone https://github.com/higuri/dotfiles
pushd dotfiles
  . install.sh
popd

# some settings...
# https://stackoverflow.com/questions/39606031/intellij-key-repeating-idea-vim
defaults write -g ApplePressAndHoldEnabled -bool false

# XXX: iTerm2 Preferences
# - Profiles > Colors > Color Presets: Solarized Dark
# - Profiles > Text > Font: M PLUS 1 Code 16pt
# - Profiles > Window > Columns x Rows: 160 x 40

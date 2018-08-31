#! /usr/bin/env bash

ln -s ./.zshrc ${HOME}/.zshrc
ln -s ./.gitconfig ${HOME}/.gitconfig
ln -s ./.jrnl_config ${HOME}/.jrnl_config

# Project dependencies (mac only at this point)
brew install fzf
brew install bat
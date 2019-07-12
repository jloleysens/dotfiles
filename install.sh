#! /usr/bin/env bash

for dotfile in .zshrc .gitconfig .jrnl_config
do
  echo "Removing $dotfile..."
  rm -f "${HOME}/$dotfile"
  echo "Linking $dotfile..."
  ln -s $PWD/$dotfile $HOME/$dotfile
done

# Spacer
echo

echo "Checking depdendencies..."

# Project dependencies (mac only at this point)
type fzf || brew install fzf
type bat || brew install bat

echo "Done!"

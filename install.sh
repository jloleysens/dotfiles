#! /usr/bin/env bash

function make_sym_link() {
  echo "Removing $2..."
  rm -f $2
  echo "Linking $1 => $2..."
  ln -s $1 $2
}

for dotfile in .zshrc .gitconfig .jrnl_config .warprc .vimrc-admin-mode
do

  case $dotfile in
  '.vimrc-admin-mode')
    FileName=.vimrc
    ;;
  *)
    FileName=$dotfile
    ;;
  esac

  make_sym_link $PWD/$dotfile $HOME/$FileName

  if [ $FileName = '.vimrc' ]
  then
    make_sym_link $HOME/$FileName $HOME/.ideavimrc
  fi
done

# Spacer
echo

echo "Checking depdendencies..."

# Project dependencies (mac only at this point)
type fzf || brew install fzf
type bat || brew install bat
type ag || brew install ag

echo "Done!"

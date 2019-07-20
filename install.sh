#! /usr/bin/env bash

RED="\033[1;31m"
GREEN="\033[1;32m"
PURPLE="\033[1;35m"
NOCOLOR="\033[0m"

function red() {
  echo -e "${RED}$1${NOCOLOR}"
}

function green() {
  echo -e "${GREEN}$1${NOCOLOR}"
}

function purple() {
  echo -e "${PURPLE}$1${NOCOLOR}"
}

function make_sym_link() {
  red "Removing $2..."
  rm -f $2
  purple "Linking $1 => $2..."
  ln -s $1 $2
}

for dotfile in .zshrc .gitconfig .jrnl_config .warprc .vimrc-admin-mode .ideavimrc
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
  echo ""
done

# Spacer
echo

echo "Checking depdendencies..."

# Project dependencies (mac only at this point)
type fzf || brew install fzf
type bat || brew install bat
type ag || brew install ag

green "Done!"

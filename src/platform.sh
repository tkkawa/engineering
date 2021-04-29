#!/bin/sh
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color=auto'

if [ "$(uname)" == "Darwin" ]; then
  OS='Mac'
  unalias ls
elif [ "$(uname)" == "Linux" ]; then
  OS='Linux'
  unset CLICOLOR
  unset LSCOLORS
fi

echo $OS

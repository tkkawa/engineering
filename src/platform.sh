#!/bin/sh

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color=auto'

if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
  unalias ls
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
  unset CLICOLOR
  unset LSCOLORS
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

echo $OS

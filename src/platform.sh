#!/bin/sh
if [ "$(uname)" == "Darwin" ]; then
  OS='Mac'
elif [ "$(uname)" == "Linux" ]; then
  OS='Linux'
fi

echo $OS

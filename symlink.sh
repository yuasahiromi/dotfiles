#!/bin/sh
cd $(dirname $0)
for dotfile in .?*
do
  if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
  then
    ln -Fis "$PWD/$dotfile" $HOME
  fi
done
if [ ! -d ~/.vim_tmp ]; then
  mkdir ~/.vim_tmp
fi

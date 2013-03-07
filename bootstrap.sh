#!/bin/bash

git pull

list=`find . -type f -not -iwholename '*/.git*' -not -name 'bootstrap.sh' -not -name 'README'`
for i in $list; do 
    echo Diffing $i
    diff -ruN ~/$i $i
done

function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt
source ~/.bashrc

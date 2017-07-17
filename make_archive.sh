#!/usr/bin/env bash
# update by ruohan.chen on 2017-06-08

cd $(dirname $0)
cwd=$(pwd)
cd ..

tar czvf $cwd/vim_config.tgz \
  .vimrc .vim/vimrc .vim/bundle/Vundle.vim

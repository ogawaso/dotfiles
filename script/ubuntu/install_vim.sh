#!/bin/sh

DIR=$HOME/src

mkdir $DIR

sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install gettext -y
sudo apt-get install mercurial -y

sudo apt-get install libncurses5-dev -y
sudo apt-get install luajit -y
sudo apt-get install libluajit-5.1-dev -y
sudo apt-get install liblua-5.1-dev -y
sudo apt-get install python3-dev -y
sudo apt-get install ruby-dev -y

hg clone https://vim.googlecode.com/hg/ $DIR
cd $DIR


./configure \
--with-features=huge \
--enable-multibyte \
--enable-gui=gtk2 \
--enable-rubyinterp \
--enable-pythoninterp \
--enable-python3interp \
--enable-luainterp \
--with-lua-prefix=/usr \
--with-luajit \
--enable-perlinterp \
--enable-tclinterp \
--enable-mzschemeinterp \
--enable-gpm \
--enable-cscope \
--enable-fontset \
--prefix=$HOME/local "$*"

make

sudo make install

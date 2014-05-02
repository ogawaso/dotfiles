sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install curl -y
sudo apt-get install sysstat -y
sudo apt-get install ssh -y
sudo apt-get install screen -y
sudo apt-get install zsh -y

#lua for vim
sudo apt-get install liblua5.2-dev -y
#for vim http://vim-jp.org/docs/build_linux.html
sudo apt-get install mercurial gettext libncurses5-dev -y
sudo apt-get install autoconf automake cproto -y

sudo apt-get install vim-nox -y
sudo apt-get install vim-gtk -y 
sudo apt-get install vim-athena -y
sudo apt-get install vim-gnome -y
update-alternatives --set editor /usr/bin/vim.basic
sudo apt-get install git -y

sudo apt-get install apache2 -y
sudo apt-get install mysql-server -y

sudo apt-get install zlib1g-dev -y
sudo apt-get install libssl-dev -y

sudo apt-get install libreadline6-dev -y
sudo apt-get install libmysqlclient-dev -y

sudo apt-get install ctags -y

#nokogiri
sudo apt-get install libxml2-dev libxslt1-dev -y

#fiddle
sudo apt-get install libffi6 libffi-dev -y

#rmagick
sudo apt-get install libmagickwand-dev -y

#capybara-webkit
sudo apt-get install libqtwebkit-dev -y

#tig
sudo apt-get install tig -y

#ruby
mkdir src
cd src
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.bz2
tar jxvf ruby-2.0.0-p247.tar.bz2
cd ruby-2.0.0-p247
./configure
make && sudo make install
# todo rbenv
#git clone https://github.com/sstephenson/ruby-buld.git ~/.rbenv/plugins/ruby-build
# git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems


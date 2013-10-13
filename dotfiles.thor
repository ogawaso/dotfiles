require 'thor'

class Dotfiles < Thor
  include Thor::Actions

  desc 'setup', 'setup dotfiles'

  def self.source_root       # ファイルのコピー元のベースディレクトリ
    File.dirname(__FILE__)
  end


  def setup
    p destination_root
    directory "templates", "../.vim/templates"
    empty_directory "../.vim/bundle"
    unless Dir.exist?("~/.vim/bundle/neobundle.vim")
      system('git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim')
    end

    ["vimrc", "screenrc", "zshrc", "gitconfig", "railsrc", "irbrc", "gemrc", "tigrc"].each do |f|
      copy_file ".#{f}", "../.#{f}"
    end

    copy_file "default-gems", "~/.rbenv/default-gems"

  end
end

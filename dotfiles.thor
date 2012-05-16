require 'thor'

class Dotfiles < Thor
  include Thor::Actions

  desc 'setup', 'setup dotofiles'

  def self.source_root       # ファイルのコピー元のベースディレクトリ
    File.dirname(__FILE__)
  end


  def setup
    p destination_root
    directory "templates", "../.vim/templates"

    ["vimrc", "screenrc", "zshrc", "gitconfig", "railsrc"].each do |f|
      copy_file ".#{f}", "../.#{f}"
    end
    run("git submodule init")
    run("git submodule update")
    run("cd hub && rake install prefix=/usr/local")
  end
end

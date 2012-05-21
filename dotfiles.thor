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

    ["vimrc", "screenrc", "zshrc", "gitconfig", "railsrc", "irbrc"].each do |f|
      copy_file ".#{f}", "../.#{f}"
    end
    run("git submodule init")
    run("git submodule update")
    run("cd hub.git && sudo rake install prefix=/usr/local")
    run("gem install interactive_editor")
  end
end

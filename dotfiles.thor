require 'thor'
require 'yaml'

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
    unless Dir.exist?("~/zsh-completions")
      system('git clone git://github.com/zsh-users/zsh-completions.git ~/zsh-completions')
    end

    [
      "vimrc",
      "screenrc",
      "zshrc",
      "gitconfig",
      "railsrc",
      "irbrc",
      "gemrc",
      "tigrc",
      "rspec"
    ].each do |f|
      copy_file ".#{f}", "../.#{f}"
    end

    copy_file "default-gems", "~/.rbenv/default-gems"

    npms = YAML.load_file("./npm.yml")
    npms.each do |npm|
      `npm install -g #{npm}`
    end

  end
end

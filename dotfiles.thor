require 'thor'
require 'yaml'
require 'open3'

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
    unless Dir.exist?("#{Dir.home}/.vim/bundle/neobundle.vim")
      system('git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim')
    else
      p 'neobundle exists'
    end

    unless Dir.exist?("#{Dir.home}/zsh-completions")
      system('git clone git://github.com/zsh-users/zsh-completions.git ~/zsh-completions')
    else
      p 'zsh-completeions exists'
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

    if exist_command?('npm')
      npms = YAML.load_file("./npm.yml")
      npms.each do |npm|
        `npm install -g #{npm}`
      end
    else
      p 'npm not exist'
    end

    if exist_command?('vagrant')
      vagrant_plugins = YAML.load_file("./vagrant_plugins.yml")
      vagrant_plugins.each do |p|
        `vagrant plugin install #{p}`
      end
    else
      p 'vagrant not exist'
    end
  end

  private

  def exist_command?(command)
    begin
      _, _, process_status = Open3.capture3("type #{command} >&2")
      return process_status.success?
    rescue => e
      p e.backtrace
      false
    end
  end
end

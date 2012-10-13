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
    run("gem install interactive_editor")
    run("gem install hub")

    src_dir = File.join(Dir.home, "src")
    FileUtils.mkdir_p src_dir
    Dir.chdir src_dir do
      run("git clone git@github.com:ogawaso/gem-src.git")
      Dir.chdir "gem-src" do
        run("git checkout -b home_dir origin/home_dir")
        run("rake build")
        run("rake install")
      end
    end
  end
end

require 'fileutils'


if __FILE__ == $0
  home_dir = ENV['HOME']
  p home_dir
  FileUtils.mkdir_p("#{home_dir}/.vim/autoload")
  FileUtils.symlink("#{home_dir}/config/.vim/bundle/vim-pathogen/autoload/pathogen.vim", "#{home_dir}/.vim/autoload/pathogen.vim")
  FileUtils.symlink("#{home_dir}/config/.vim/bundle", "#{home_dir}/.vim/bundle")
end

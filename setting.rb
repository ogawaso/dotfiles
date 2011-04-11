require 'fileutils'


if __FILE__ == $0
  home_dir = FileUtils.pwd
  p home_dir
  prev_dir = home_dir.gsub("/config", "")
  p prev_dir
  FileUtils.mkdir_p("#{prev_dir}/.vim/autoload")
  FileUtils.symlink("#{home_dir}/.vim/bundle/vim-pathogen/autoload/pathogen.vim", "#{prev_dir}/.vim/autoload/pathogen.vim")
  FileUtils.symlink("#{home_dir}/.vim/bundle", "#{prev_dir}/.vim/bundle")
end

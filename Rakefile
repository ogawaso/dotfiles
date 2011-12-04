task "default" => :setup


desc 'make dev environment'
task :setup do
  require 'fileutils'
  home_dir = ENV['HOME']
  current_dir = File.dirname(__FILE__)
  vim_template_path = File.join(home_dir, ".vim", "templates")
  p "home:#{home_dir}"
  p "current:#{current_dir}"

  FileUtils.mkdir_p(vim_template_path)
  FileUtils.cp(File.join(current_dir, "templates", "rb.tpl"), File.join(home_dir, ".vim"))
  FileUtils.cp(File.join(current_dir, ".vimrc"), home_dir)
  FileUtils.cp(File.join(current_dir, ".screenrc"), home_dir)
  FileUtils.cp(File.join(current_dir, ".zshrc"), home_dir)

end

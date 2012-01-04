# -*- coding: utf-8 -*-
require 'fileutils'

class Setup
  class << self
    def execute(to_dir = nil)
      home_dir = to_dir || ENV['HOME']

      current_dir = File.dirname(__FILE__)
      vim_template_path = File.join(home_dir, ".vim", "templates")
      p "home:#{home_dir}"
      p "current:#{current_dir}"

      FileUtils.mkdir_p(vim_template_path)
      FileUtils.cp(File.join(current_dir, "templates", "rb.tpl"), File.join(home_dir, ".vim", "templates"))
      FileUtils.cp(File.join(current_dir, ".vimrc"), home_dir)
      FileUtils.cp(File.join(current_dir, ".screenrc"), home_dir)
      FileUtils.cp(File.join(current_dir, ".zshrc"), home_dir)
      FileUtils.cp(File.join(current_dir, ".gitconfig"), home_dir)
      FileUtils.cp(File.join(current_dir, ".gemrc"), home_dir)
      `git submodule init`
      `git submodule update`

    end
  end
end

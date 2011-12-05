# -*- coding: utf-8 -*-
require './setup.rb'

describe Setup, ".execute" do
  before(:each) do
    @to_dir = "result"
    FileUtils.rm_r(@to_dir)
  end

  it "dotfiles moves to home dir" do
    Setup.execute(@to_dir)
    File.exist?(File.join(@to_dir, ".vimrc")).should be_true
    File.exist?(File.join(@to_dir, ".vim", "templates", "rb.tpl")).should be_true
  end
end


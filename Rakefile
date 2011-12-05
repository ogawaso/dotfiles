require 'rspec/core/rake_task'
task "default" => :setup
require './setup.rb'

desc 'make dev environment'
task :setup do
  Setup.execute
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "./spec/*.rb"
end

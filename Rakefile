require "bundler/gem_tasks"
require 'bundler/setup'

begin
  require 'rspec/core'
  require "rspec/core/rake_task"

  desc "Run all specs in spec directory"
  RSpec::Core::RakeTask.new(:spec)

rescue LoadError
end

task default: :spec
task test:    :spec

desc "Open an irb console with this library loaded"

task :console do
  require 'irb'
  require 'irb/completion'
  require 'cantab_utils'
  ARGV.clear
  IRB.start
end

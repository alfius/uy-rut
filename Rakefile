require 'rubygems'
require 'rspec/core/rake_task'

task default: :spec

RSpec::Core::RakeTask.new do |task|
  task.rspec_opts = ["-c", "-f progress"]
  task.pattern    = 'spec/**/*_spec.rb'
end

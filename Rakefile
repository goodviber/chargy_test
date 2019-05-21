require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "chargy"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc 'Run Github Repo Search'
task :run, [:username] do |task, args|

  response = ApiCaller.new(args[:username]).api_call
  puts LanguageCalculator.new(response).favourite_language

end

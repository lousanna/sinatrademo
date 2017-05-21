require './app'
require 'sinatra/activerecord/rake'
task :default => :test

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end

namespace :db do
  task :load_config do
    require "./app"
  end
end

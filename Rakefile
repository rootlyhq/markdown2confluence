require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |test|
  test.libs << "test"
  test.libs << "lib"
  test.test_files = FileList['test/**/*_test.rb']
  test.verbose = false
end

task :default => :test
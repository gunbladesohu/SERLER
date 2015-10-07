begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
  task :test_with_coveralls => [:spec, :test, :cucumber, 'coveralls:push']
rescue LoadError
  desc 'coveralls rake task not available (coveralls not installed)'
end

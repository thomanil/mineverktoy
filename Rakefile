require 'rake'
require 'rake/testtask'

# Rake build tasks

desc "Default task" 
task :default => [:jslint]


desc "Run unit tests."
task :test do
  puts %x{ ruby -rubygems test/tests.rb}
end


desc "Deploy app to Heroku"
task :deploy do
  puts %x{ deploy git push heroku master }
end


desc "Generates config and files for new interview"
task :new_interview do
  # Add new hash to interviews.rb
  # Set timestamp and date to now
  # generate new interview views and touch new jpg files in images/<name>
  # output instructions

  # Converting to/from timestamp
  # timestamp = Time.now.to_i
  # Time.at timestamp
end
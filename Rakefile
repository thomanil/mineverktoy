require 'rake'
require 'rake/testtask'

task :default => [:test]


desc "Run unit tests."
task :test do
  puts %x{ ruby -rubygems test/tests.rb}
end

desc "Deploy app to Heroku"
task :deploy do
  puts %x{ git push heroku master }
end

desc "Get current timestamp and publish-date (if needed to update interview pubdate)"
task :updated_timestamp do
  published_timestamp = Time.now.to_i
  published_at = Time.at(published_timestamp).strftime("%d.%m.%Y")
  puts "'published' timestamp: #{published_timestamp}"
  puts "'published_at' date string: #{published_at}"
end

desc "Generates interview skeleton: updates interview.rb config file, creates needed view and images."
task :new_interview do
  puts "Let's create a new interview!"
  puts "What is the full name of the person? (Example: 'John Smith')"
  full_name = STDIN.gets.gsub("\n","")
  puts "What should we use as a root filename for the files? (Example: 'john-smith')"
  root_filename = STDIN.gets.gsub("\n","")
  puts "What is the title of the person? (Example: 'Programmer at Acme Solutions')"
  title = STDIN.gets.gsub("\n","")
  published_timestamp = Time.now.to_i
  published_at = Time.at(published_timestamp).strftime("%d.%m %Y")
  
  puts "Full name: "+full_name
  puts "Title: "+title
  puts "Used as root for all filenames: "+root_filename
  puts "Publish timestamp: "+published_timestamp.to_s
  puts "Publish date: "+published_at
  puts "Generating files..."
  
  update_interview_config full_name, root_filename, title, published_timestamp, published_at
  create_interview_file root_filename
  create_image_files root_filename
  
  puts "Interview generated, interview.rb updated." 
  puts "Now update the interview (view/#{root_filename}.rb) and thumbnails & portrait (public/images/#{root_filename}/*.jpg)"
  puts "Oh and remember: add'em to the git repo! :)"
end


def update_interview_config full_name, root_filename, title, published_timestamp, published_at
  config_file = "interviews.rb"
  new_entry = "{:published? => false, :published_timestamp => #{published_timestamp}, :published_at => '#{published_at}', :name => '#{root_filename}', :full_name => '#{full_name}', :title => '#{title}'}"
  updated_config_file = File.read(config_file).gsub("}]", "},\n   #{new_entry}]")
  File.open(config_file, "w") {|file| file.puts updated_config_file}
end


def create_interview_file root_filename
    interview_erb_template = <<TEMPLATE

<%= interview_header @name, "" %>

<%= q1_who_are_you? %>

<%= q2_what_hardware? %>

<%= q3_what_software? %>

<%= q4_dream_setup? %>

TEMPLATE

    FileUtils.touch("views/interviews/#{root_filename}.erb")
    File.open("views/interviews/#{root_filename}.erb", "r+") do |file|
      file.puts interview_erb_template
    end
end


def create_image_files root_filename
    FileUtils.mkdir("public/images/#{root_filename}")
    FileUtils.touch("public/images/#{root_filename}/portrait.jpg")
    FileUtils.touch("public/images/#{root_filename}/thumbnail-bw.jpg")
    FileUtils.touch("public/images/#{root_filename}/thumbnail-color.jpg")
end  


  



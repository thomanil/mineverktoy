#!/usr/bin/env ruby

require 'fileutils'
include FileUtils


puts "Hva er navnet til personen?"
name = gets.chomp

puts "Hva er tittelen til personen?"
title = gets.chomp

puts "Hva skal være path ('fornavn-etternavn') til intervju, bilder etc?"
path = gets.chomp

imageDirPath = "./public/images/#{path}"
mdxPath = "./src/content/blog/#{path}.mdx"

mkdir_p imageDirPath
cp "./src/content/blog/_template.mdx", mdxPath

interviewText = File.read(mdxPath)
updatedText = interviewText.gsub(/@TITLE/, title).gsub(/@NAME/, name).gsub(/@PATH/, path)
File.open(mdxPath, "w") { |file| file.puts updatedText }

puts "\nGenerated interview mdx file: #{mdxPath}"
puts "\nGenerated img directory: #{imageDirPath}"

puts "\nUrl:"
puts "http://localhost:4321/#{path}"
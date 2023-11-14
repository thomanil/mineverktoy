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

# TODO Create image folder
# TODO Copy template mdx file, with substitions

mkdir_p imageDirPath
mkdir_p mdxPath

puts "\nGenerated interview mdx file: #{mdxPath}"
puts "\nGenerated img directory: #{imageDirPath}"



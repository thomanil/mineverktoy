#!/usr/bin/env ruby


puts "Hva er navnet til personen?"
name = gets

puts "Hva er tittelen til personen?"
title = gets

puts "Hva skal være path ('fornavn-etternavn') til intervju, bilder etc?"
path = gets

puts "\nGenerating..."

mkdir ".\public\images\$path"

# TODO Create image folder
# TODO Copy template mdx file, with substitions



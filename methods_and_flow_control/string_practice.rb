#!/usr/bin/env ruby

string_practice = "this is a string to practice with"

puts string_practice
puts string_practice.capitalize
puts string_practice.upcase
puts string_practice.capitalize.sub('string', "'string'")
puts "The string '#{string_practice}' has #{string_practice.length} characters"
puts string_practice.reverse
puts ("#{string_practice.byteslice(20..27)} " * 3).strip + "!"

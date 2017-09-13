#! usr/bin/env ruby
require_relative('./ana')


puts 'Enter your first word or phrase:'
input = gets.chomp
puts 'Enter your second word or phrase:'
comparison = gets.chomp

ana_script = Anagram.new(input, comparison)

result = ana_script.ana

puts result

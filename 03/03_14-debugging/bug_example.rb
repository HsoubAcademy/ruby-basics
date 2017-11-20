require 'byebug'

value = [4]
values = [2, 3, 6]
byebug
avg = values.reduce(:+) / values.length.to_f
puts "Average #{avg}"
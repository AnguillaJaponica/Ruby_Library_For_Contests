a, b = gets.split.map(&:to_i)

if a <= b * 2
  puts 0
else
  puts a - b * 2
end
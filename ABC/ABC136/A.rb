a, b, c = gets.split.map(&:to_i)

if c - (a - b) >= 0
  puts c - (a - b)
else
  puts 0
end
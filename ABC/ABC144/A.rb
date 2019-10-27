a, b = gets.split.map(&:to_i)

if a < 0 || a > 9 || b < 0 || b > 9
  puts -1
else
  puts a * b
end
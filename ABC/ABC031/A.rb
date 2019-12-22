a, d = gets.split.map(&:to_i)

if a <= d
  puts (a + 1) * d
else
  puts a * (d + 1)
end
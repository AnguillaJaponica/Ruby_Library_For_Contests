w, a, b = gets.split.map(&:to_i)

if (a - b).abs < w
  puts 0
else
  puts (a - b).abs - w
end
a, b, c= gets.split.map(&:to_i)

if a <= b
  puts c / a
else
  puts c / b
end
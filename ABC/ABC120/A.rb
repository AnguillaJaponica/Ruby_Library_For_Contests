a, b, c = gets.split.map(&:to_i)

count = b / a
if count <= c
  puts count
else
  puts c
end
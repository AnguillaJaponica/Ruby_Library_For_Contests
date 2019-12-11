a = gets.to_i
b = gets.to_i
c = gets.to_i

[a, b, c].each do |i|
  puts [a, b, c].sort.reverse.index(i) + 1
end
x, y = gets.split.map(&:to_i)
res = 1
while 2 * x <= y
  res += 1
  x *= 2
end

puts res
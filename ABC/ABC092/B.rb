n = gets.to_i
d, x = gets.split.map(&:to_i)
ans = 0
n.times do
  a = gets.to_i
  ans += (d - 1) / a + 1
end

puts ans + x

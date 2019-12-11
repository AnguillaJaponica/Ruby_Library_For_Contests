total = 0
3.times do
  s, e = gets.split.map(&:to_i)
  total += s * e / 10
end

puts total
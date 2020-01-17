n, a, b = gets.split.map(&:to_i)
m = 0
n.times do
  s, d = gets.split
  s = s == "East" ? 1 : -1
  d = [b, [a, d.to_i].max].min * s
  m += d
end
s = m == 0 ? "" : (m > 0 ? "East " : "West ")
puts "#{s}#{m.abs}"

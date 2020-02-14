a1, a2, b1, b2, c1, c2 = gets.split.map(&:to_i)

b1 -= a1
b2 -= a2
c1 -= a1
c2 -= a2

puts (b1 * c2 - b2 * c1).abs.to_f / 2
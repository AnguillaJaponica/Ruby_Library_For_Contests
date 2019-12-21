a, b, c, k = gets.split.map(&:to_i)
s, t = gets.split.map(&:to_i)

fee = a * s + b * t
if (s + t) >= k
  fee -= (s + t) * c
end

puts fee

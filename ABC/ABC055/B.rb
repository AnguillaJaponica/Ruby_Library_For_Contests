n = gets.to_i
ans = 1
(1..n).each do |i|
  ans *= i
  ans %= (10 ** 9 + 7)
end

puts ans
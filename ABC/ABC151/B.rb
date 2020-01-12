n, k, m = gets.split.map(&:to_i)
tests =  gets.split.map(&:to_i)
total = tests.inject(:+)
ans = [m*n -total, 0].max

if ans > k
  ans = -1
end

puts ans

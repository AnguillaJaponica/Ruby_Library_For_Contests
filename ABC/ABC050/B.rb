gets.to_i
a = gets.split.map(&:to_i)
sum = a.inject(:+)
gets.to_i.times do |i|
  p, x = gets.split.map(&:to_i)
  p sum - (a[p - 1] - x)
end

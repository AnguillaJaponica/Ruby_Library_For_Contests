n = gets.to_i
k = gets.to_i
sum = 0
arr = gets.split.map(&:to_i)
arr.each do |x|
  sum += x <= k - x ? x : k - x
end
p sum * 2

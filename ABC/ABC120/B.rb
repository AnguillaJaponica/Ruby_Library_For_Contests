a, b, k = gets.split.map(&:to_i)
set = []

(1..100).each do |i|
  if a % i == 0 && b % i == 0
    set.push(i)
  end
end

puts set.sort.reverse[k-1]
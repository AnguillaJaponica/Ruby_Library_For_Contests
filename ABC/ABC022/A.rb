n, s, t = gets.split.map(&:to_i)
w = gets.to_i
count = 0
if s <= w && w <= t
  count += 1
end

(n-1).times do
  w += gets.to_i
  if w.between?(s, t)
    count += 1
  end
end

puts count

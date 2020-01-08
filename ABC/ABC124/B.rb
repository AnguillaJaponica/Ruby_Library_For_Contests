n = gets.to_i
hotels= gets.split.map(&:to_i)
count = 0
max = 0

(1..n-1).each do |i|
  if hotels[i-1] > max
    max = hotels[i-1]
  end

  if hotels[i] >= max
    count += 1
  end
end

puts count + 1
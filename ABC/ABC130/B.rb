n, x = gets.split.map(&:to_i)
bounce_distance = gets.split.map(&:to_i)
distance = 0
count = 0

bounce_distance.each do |bounce|
  if distance <= x
    count += 1
  end
  distance += bounce
end

if distance <= x
  count += 1
end

puts count
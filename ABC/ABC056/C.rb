x = gets.to_i
time = 0

(1..x).each do |i|
  distance = i * (i + 1) / 2
  if distance >= x
    time = i
    break
  end
end

puts time
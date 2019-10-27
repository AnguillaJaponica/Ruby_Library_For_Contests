n = gets.to_i
count = 0

(1..n).each do |i|
  if i.to_s.length % 2 == 1
    count += 1
  end
end

puts count
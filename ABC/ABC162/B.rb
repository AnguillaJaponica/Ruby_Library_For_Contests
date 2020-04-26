total = 0
n = gets.to_i

(1..n).each do |i|
  unless i % 3 == 0 || i % 5 == 0
    total += i
  end
end

puts total
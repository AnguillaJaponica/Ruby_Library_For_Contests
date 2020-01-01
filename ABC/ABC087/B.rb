a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0

(0..a).each do |h|
  (0..b).each do |i|
    (0..c).each do |j|
      if 500 * h + 100 * i + 50 * j == x
        count += 1
      end
    end
  end
end

puts count
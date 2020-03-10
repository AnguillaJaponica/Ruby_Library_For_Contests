l, r = gets.split.map(&:to_i)
array = []

if r - l >= 2019
  puts 0
else
  (l..r).each do |i|
    (i + 1..r).each do |j|
      array << i * j % 2019
    end
  end
end

puts array.min
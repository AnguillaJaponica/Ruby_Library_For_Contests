array=gets.split.map(&:to_i).sort
k=gets.to_i

k.times do
  array[-1] *= 2
end

puts array.inject(:+)

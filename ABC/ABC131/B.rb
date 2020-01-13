n, l = gets.split.map(&:to_i)
tastes = []

n.times do |i|
  tastes << l + i
end
tastes.delete(tastes.min_by{|i| i.abs})
puts tastes.inject(:+)
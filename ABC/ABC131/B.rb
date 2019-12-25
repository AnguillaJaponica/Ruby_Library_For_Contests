n = gets.to_i
weights = gets.split.map(&:to_i)
diff_sets = []

n.times do |i|
  diff_sets.push((weights[0..i].inject(:+) - weights[i+1..-1].inject(:+)).abs)
end

puts diff_sets.min
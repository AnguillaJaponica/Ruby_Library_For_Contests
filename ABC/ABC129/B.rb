n = gets.to_i
weights = gets.split.map(&:to_i).sort
min_gap = 100

(0...n-1).each do |i|
  if (weights[0..i].inject(:+) - weights[i+1..-1].inject(:+)).abs <= min_gap
    min_gap = (weights[0..i].inject(:+) - weights[i+1..-1].inject(:+)).abs
  end
end

puts min_gap
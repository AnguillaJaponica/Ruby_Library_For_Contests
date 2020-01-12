n = gets.to_i
weights = gets.split.map(&:to_i).sort
minimum = 1000000
alts = []

(1..n-2).each do |i|
  a_weights, b_weights = weights.partition {|weight| weights.index(weight) + 1 <= i}
  gap = (a_weights.inject(:+) - b_weights.inject(:+)).abs
  if gap < minimum
    minimum = gap
  end
  alts << minimum
end

puts alts.min

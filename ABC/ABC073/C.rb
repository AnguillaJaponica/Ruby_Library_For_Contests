n, t = gets.split.map(&:to_i)
timings = gets.split.map(&:to_i).sort.reverse
gap = 0

(0..timings.size - 2).each do |i|
  diff = timings[i] - timings[i + 1]
  if diff >= t
    gap += diff - t
  end
end

puts n * t - gap
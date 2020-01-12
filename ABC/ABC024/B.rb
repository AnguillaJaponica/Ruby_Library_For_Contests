n, t = gets.split.map(&:to_i)
open_timings = []
n.times do
  open_timings << gets.to_i
end

gaps = []
(0...n-1).each do |i|
  gap = (open_timings[i] - open_timings[i+1]).abs
  if gap < t
    gaps << t - gap
  end
end

puts n*t - gaps.inject(:+)
k, n = gets.split.map(&:to_i)
houses = gets.split.map(&:to_i).sort

diff = k - houses[-1] + houses[0]

(0...n-1).each do |i|
  diff = [diff, houses[i+1] - houses[i]].max
end

puts k - diff

n, x = gets.split.map(&:to_i)
coordinates = gets.split.map(&:to_i)
coordinates.map! do |c|
  c = (c - x).abs
end

puts coordinates.inject(:gcd)
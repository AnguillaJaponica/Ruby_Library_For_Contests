a, b, c, x, y = gets.split.map(&:to_i)
z = [x, y].min
puts [a * x + b * y, a * (x - z) + b * (y - z) + 2 * c * z, 2 * c * [x, y].max].min
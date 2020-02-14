a, b, c, d, e = gets.split.map(&:to_i).sort
puts [e + d + a, e + c + b].max
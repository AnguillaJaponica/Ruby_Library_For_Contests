n, m, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
l = a.count {|e| e < x}
puts [l, m - l].min

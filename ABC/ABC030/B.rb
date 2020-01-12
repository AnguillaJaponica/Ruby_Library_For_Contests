n,m = gets.split.map(&:to_i)

puts [360.to_f / (n.to_f/12 - m.to_f/60).abs, 360 -360.to_f / (n.to_f/12 - m.to_f/60).abs].min
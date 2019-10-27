k, x = gets.split.map(&:to_i)
((x-k+1)..(x+k-1)).each do |i|
  print i.to_s + ' '
end
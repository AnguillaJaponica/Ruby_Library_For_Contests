a, b, c = gets.split.map(&:to_i).sort
diff = [a, b, c].map {|x| c - x}.inject(:+)

if diff % 2 == 0
  puts diff / 2
else
  puts (diff + 3) / 2
end
n, ct = gets.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)
puts (n > 1) ? t.each_cons(2).map {|i, j| [j - i, ct].min}.inject(:+) + ct : ct

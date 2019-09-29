n = gets.to_i
one_to_n= (1..n).to_a
numbers = gets.split(' ').map(&:to_i)

one_to_n.each do |idx|
  print (one_to_n.bsearch{|num| num <=> numbers.index(idx)+1}).to_s + ' '
end
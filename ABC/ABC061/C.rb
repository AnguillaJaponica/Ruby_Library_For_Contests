s = gets.chomp.chars
sum = 0
['', '+'].repeated_permutation(s.size-1).each do |array|
  sum += eval(s.zip(array).flatten.join)
end

puts sum
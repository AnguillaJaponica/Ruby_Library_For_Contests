numbers = gets.split.map(&:to_i)
numbers.uniq.each do |i|
  if numbers.count(i) == 1
    puts i
  end
end
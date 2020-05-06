n = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
numbers_total = numbers.inject(:+)
minimum = 10 ** 10

(0..numbers.size-2).each do |i|
  diff = (numbers_total - 2 * numbers[i]).abs
  if minimum > diff
    minimum = diff
  end
end

puts minimum
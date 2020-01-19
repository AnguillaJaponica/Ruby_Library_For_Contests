n = gets.to_i
numbers = gets.split.map(&:to_i)
maximum = numbers[0]
count = 0
numbers.each do |number|
  if number <= maximum
    count += 1
    maximum = number
  end
end

puts count
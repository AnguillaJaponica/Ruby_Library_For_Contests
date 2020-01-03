n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0
while numbers.all?(&:even?) do
  count += 1
  numbers = numbers.map { |number| number / 2 }
end

puts count
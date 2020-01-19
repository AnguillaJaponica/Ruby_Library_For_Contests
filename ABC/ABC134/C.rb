n = gets.to_i
numbers = []
n.times do
  numbers << gets.to_i
end

num1, num2 = numbers.sort[-2..-1]

numbers.each do |number|
  if number == num2
    puts num1
  else
    puts num2
  end
end
x = gets.to_i
money = 100
count = 0
loop do
  if money >= x
    break
  end
  money = (money + money * 0.01).floor
  count += 1
end

puts count
a = gets.to_i
b = gets.to_i
n = gets.to_i
minimum_liked = a.lcm(b)
mul = 1

loop do
  if minimum_liked >= n
    puts minimum_liked
    break
  else
    mul += 1
    minimum_liked * mul
  end
end

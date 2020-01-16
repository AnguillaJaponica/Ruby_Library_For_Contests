s = gets.to_i

list = []
list[s] = 1

(2..1000000).each do |i|
  if s.even?
    s /= 2
  else
    s = 3 * s + 1
  end

  if list[s]
    puts i
    break
  else
    list[s] = 1
  end
end

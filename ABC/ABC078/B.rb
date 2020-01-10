x, y, z = gets.split.map(&:to_i)

n = x / y + 1

loop do
  if y * n + z * (n + 1) > x
    n -= 1
  else
    break
  end
end

puts n

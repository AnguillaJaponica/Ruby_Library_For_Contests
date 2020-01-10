a, b = gets.split.map(&:to_i)
plug = 1
ans = 0

while plug < b do
  plug -= 1
  plug += a
  ans += 1
end

puts ans

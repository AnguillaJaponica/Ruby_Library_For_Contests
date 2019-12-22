n = gets.to_i
blocks = gets.split.map(&:to_i)

point = 1
flag = false

blocks.each do |block|
  if block == point
    blocks.slice!(0..blocks.index(block))
    point += 1
    flag = true
  end
end

if !flag
  puts -1
else
  puts n - point
end

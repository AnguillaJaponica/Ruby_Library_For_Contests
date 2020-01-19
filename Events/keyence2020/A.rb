h = gets.to_i
w = gets.to_i
n = gets.to_i
i = 0

if h >= w
  loop do
    if h * i >= n
      break
    else
      i += 1
    end
  end
else
  loop do
    if w * i >= n
      break
    else
      i += 1
    end
  end
end

puts i
n = gets.to_i
ans = []

(1..n).each do |i|
  count = 0
  (1..i).each do |j|
    if i % j == 0
      count += 1
    end
  end

  if count == 8
    ans.push(i)
  end
end

puts ans.length

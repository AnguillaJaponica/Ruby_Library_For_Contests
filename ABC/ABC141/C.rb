n, k, q = gets.split.map(&:to_i)

ans = Array.new(n, 0)

q.times do
  ans[gets.to_i - 1] += 1
end

n.times do |i|
  value = k - (q - ans[i])
  if value > 0
    puts 'Yes'
  else
    puts 'No'
  end
end
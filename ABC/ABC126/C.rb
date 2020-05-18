n, k = gets.split.map(&:to_i)
ans = 0
(1..n).each do |i|
  st = 1.to_f / n
  now = i
  loop do
    if now >= k
      break
    else
      now *= 2
      st /= 2
    end
  end
  ans += st
end

puts ans
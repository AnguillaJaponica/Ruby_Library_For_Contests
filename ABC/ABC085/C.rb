n, y = gets.split.map(&:to_i)
ans = '-1 -1 -1'

(0..n).each do |i|
  (0..n).each do |j|
    if n - i - j < 0
      next
    end

    if 10000 * i + 5000 * j + 1000 * (n - i - j) == y
      ans = "#{i} #{j} #{n-i-j}"
      break
    end
  end
end

puts ans
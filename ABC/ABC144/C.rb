n = gets.to_i
a = Math.sqrt(n).to_i
ans = []

(1..a).each do |i|
  if n % i == 0
    ans.push(n / i + i - 2)
  end
end

puts ans.min
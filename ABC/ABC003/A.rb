n = gets.to_f
expectation = 0

(1..n).each do |i|
  expectation += 10000 * i / n
end

puts expectation
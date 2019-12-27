n, a, b = gets.split.map(&:to_i)
total = 0

(1..n).each do |i|
  digit_total = 0
  i.to_s.each_char do |str|
    number = str.to_i
    digit_total += number
  end
  if digit_total >= a && digit_total <= b
    total += i
  end
end

puts total
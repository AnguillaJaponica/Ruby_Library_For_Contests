n = gets.chomp
digit_sum = 0

n.each_char do |char|
  digit_sum += char.to_i
end

if n % digit_sum == 0
  puts 'Yes'
else
  'No'
end
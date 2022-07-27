n = gets.to_i
s = gets.chomp

s.size.times do |i|
  next if s[i] == '0'
  
  if i % 2 == 0
    puts 'Aoki'
    return
  else
    puts 'Takahashi'
    return
  end
end
  
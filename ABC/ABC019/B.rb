str = gets.chomp.chars
ans = ''
count = 1

(0...str.length).each do |i|
  temp = str[i]
  if str[i+1] == str[i]
    count += 1
  else
    ans += "#{str[i]}#{count}"
    count = 1
  end
end

puts ans
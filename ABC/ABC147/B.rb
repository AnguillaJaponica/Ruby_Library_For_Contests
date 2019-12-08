str = gets.chomp
anti = str.reverse
count = 0

(0..anti.length-1).each do |i|
  if anti[i] != str[i]
    count += 1
  end
end

if count % 2 == 0
  puts count / 2
else
  puts count
end

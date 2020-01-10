str1 = gets.chomp.chars
str2 = gets.chomp.chars
diff = []
ans = 'You can win'

(0..str1.length-1).each do |i|
  if str1[i] != str2[i]
    diff.push([str1[i], str2[i]].sort)
  end
end

diff.each do |d|
  if d.include?('@')
    unless ['a','t','c','o','d','e','r'].include?(d[1])
      ans = 'You will lose'
      break
    end
  else
    ans = 'You will lose'
    break
  end
end

puts ans

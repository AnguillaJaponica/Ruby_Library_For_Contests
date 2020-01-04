s = gets.chomp.chars
k = gets.to_i
words = []

if k > s.length
  ans = 0
else
  (0..s.length-k).each do |i|
    words.push(s[i..i+k-1])
  end
  ans = words.uniq.length
end

puts ans

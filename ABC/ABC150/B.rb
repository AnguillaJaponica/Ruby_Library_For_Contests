n = gets.to_i
s = gets.chomp
words = []
count = 0

(0..n-3).each do |start|
  words.push(s[start..start+2])
end

words.each do |word|
  if word == 'ABC'
    count += 1
  end
end

puts count
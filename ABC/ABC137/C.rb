n = gets.to_i
words_count = {}
count = 0
n.times do
  word = gets.chomp.chars.sort
  if words_count[word].nil?
    words_count[word] = 1
  else
    words_count[word] += 1
  end
end

words_count.each_value do |v|
  unless v == 1
    count += v * (v - 1) / 2
  end
end

puts count
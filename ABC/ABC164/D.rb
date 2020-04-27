s = gets.chomp
ans_set = []
(1..99).each do |i|
  ans_set << (2019 * i).to_s
end
count = 0
s = gets.chomp
ans_set = []
word_set = []

if s.size <= 3
  puts 0
  exit
end

(4..s.size).each do |k|
  (0..s.size-k).each do |i|
    word_set << s[i..i+k-1]
    end
  end
end


n, k = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i).uniq.size - k
h = Hash.new(0)
ans = 0

numbers.each do |num|
  h[num] += 1
end

if h.size <= k
  puts 0
  exit
end

hashToArray = h.sort_by{|key, value| value}

(h.size-k).times do |i|
  ans += hashToArray[i][1]
end

puts ans
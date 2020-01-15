N, K, Q = gets.chomp.split.map(&:to_i)

if K - N >= Q*2
  (N..N+Q-1).each do |a|
    puts a
  end
  (K-Q+1..K).each do |b|
    puts b
  end
else
  (N..K).each do |c|
    puts c
  end
end

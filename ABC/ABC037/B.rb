n, q = gets.split.map(&:to_i)
sequence = Array.new(n, 0)

q.times do
  l, r, t = gets.split.map(&:to_i)
  (l-1..r-1).each do |i|
    sequence[i] = t
  end
end

puts sequence
n, m, k = gets.split.map(&:to_i)
friends = []
blocks = []

m.times do
  friends << gets.split.map(&:to_i)
end

k.times do
  blocks << gets.split.map(&:to_i)
end




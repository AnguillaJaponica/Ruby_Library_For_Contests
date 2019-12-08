n = gets.to_i
testimomies = []

n.times do
  a = gets.to_i
  a.times do
    x, y = gets.split.map(&:to_i)
    testimomies.push([a, x, y])
  end
end

liar_counts = []
honest_counts = []
(1..n).each do |i|
  liar_counts.push([i, 0])
  honest_counts.push([i, 0])
end

testimomies.each do |testimony|
  if testimony[2] == 0
    liar_counts[testimony[0]][1] += 1
  elsif testimony[2] == 1
    honest_counts[testimony[0]][1] += 1
  end
end


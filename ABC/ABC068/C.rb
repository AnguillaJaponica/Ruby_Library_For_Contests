n, m = gets.split.map(&:to_i)
cources = {}
ans = 'IMPOSSIBLE'
m.times do
  a, b = gets.split.map(&:to_i)
  if cources[a]
    cources[a] << b
  else
    cources[a] = [b]
  end
end

cources.each do |from, to|
  if from == 1
    to.each do |t|
      if cources[t]&.include?(n)
        ans = 'POSSIBLE'
        break
      end
    end
  end
end

puts ans

n, k = gets.split.map(&:to_i)
sunukes = {}
k.times do |i|
  di = gets.to_i
  if di >= 2
    array = gets.split.map(&:to_i)
  else
    array = [gets.to_i]
  end
  sunukes[i+1] = array
end

collection = []

sunukes.each_value do |v|
  collection << v
end

puts ((1..n).to_a - collection.flatten.uniq).size


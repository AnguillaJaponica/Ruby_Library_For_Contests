n = gets.to_i
a, b = gets.split.map(&:to_i)
k = gets.to_i
towns = gets.split.map(&:to_i)

if (towns -[a,b]).uniq.size == towns.length
  puts 'YES'
else
  puts 'NO'
end
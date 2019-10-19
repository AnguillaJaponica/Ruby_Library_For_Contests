n, l = gets.split.map(&:to_i)

tastes = []

(1..n).each do |i|
  tastes.push(l + i - 1)
end

sorted_tastes = tastes.sort

if sorted_tastes[0] >= 0
  puts (sorted_tastes[1..(sorted_tastes.length-1)]).inject(:+)
else
  puts (sorted_tastes[0..(sorted_tastes.length-2)]).inject(:+)
end

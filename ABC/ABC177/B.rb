s = gets.chomp
t = gets.chomp
longer = s
shorter = t
count = 1000
if t >= s
  longer = t
  shorter = s
end

(0..longer.size-shorter.size).each do |k|
  if (longer[k...k+shorter.size].chars - shorter.chars).size < count
    count = (longer[k...k+shorter.size].chars - shorter.chars).size
  end
end

puts count
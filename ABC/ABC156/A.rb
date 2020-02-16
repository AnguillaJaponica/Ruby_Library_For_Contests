a,b,c = gets.split.chomp

if [a,b,c].uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end
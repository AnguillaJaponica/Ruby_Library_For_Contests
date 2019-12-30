s = gets.chomp.chars
alp = ('a'..'z').to_a
non_appeared = []

alp.each do |str|
  unless s.include?(str)
    non_appeared.push(str)
  end
end

if non_appeared.length == 0
  puts 'None'
else
  puts non_appeared.sort[0]
end

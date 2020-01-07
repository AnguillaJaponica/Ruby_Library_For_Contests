s = gets.chomp
characters = ''

s.each_char do |c|
  if c == '1'
    characters = "#{characters}1"
  elsif c == '0'
    characters = "#{characters}0"
  elsif c == 'B' && characters.length >= 1
    characters = characters[0..-2]
  end
end

puts characters
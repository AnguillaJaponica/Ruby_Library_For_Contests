consonants = ['a', 'i', 'u', 'e', 'o']
w = gets.chomp.chars

w.delete_if do |str|
  consonants.include?(str)
end

puts w.join

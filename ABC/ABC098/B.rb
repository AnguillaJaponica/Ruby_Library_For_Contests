n = gets.to_i
s = gets.chomp.chars
chr = s.uniq
counts = []

(1...n-1).each do |i|
  x = s[0..i]
  y = s[i+1..-1]

  chr.each do |str|
    if x.include?(str) && y.include?(str)
      counts << str
    end
  end
end

puts counts.uniq.length
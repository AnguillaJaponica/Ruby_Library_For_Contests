s = gets.chomp

def even_str?(str)
  str[0..str.length/2-1] == str[str.length/2..-1]
end

(1..(s.length-2)/2).each do |i|
  if even_str?(s[0..-2*i-1])
    puts s[0..-2*i-1].length
    break
  end
end
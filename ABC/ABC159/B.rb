s = gets.chomp
ans = 'No'
if s == s.reverse
  if s[0..(s.size-1)/2-1] == s[0..(s.size-1)/2-1].reverse
    if s[(s.size+1)/2..-1] == s[(s.size+1)/2..-1].reverse
      ans = 'Yes'
    end
  end
end

puts s[0..(s.size-1)/2-1]
puts s[(s.size+1)/2..-1]
puts ans
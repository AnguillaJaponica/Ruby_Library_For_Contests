a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
ans = "No"
if s[a] == "-" and s.count("-") == 1
  ans = "Yes"
end
puts ans
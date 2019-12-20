s = gets.chomp.split("")

if s[0] == "A" && s[2..-2].count("C") == 1 && s.count{ |item| item[/[a-z]/] } == s.size - 2
  puts 'AC'
else
  puts 'WA'
end
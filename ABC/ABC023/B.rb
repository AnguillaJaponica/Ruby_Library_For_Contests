n = gets.to_i
s = gets.chomp

unless n.odd?
  puts -1
  exit
end


a = 'b'
(1..n/2).each do |i|
  case i % 3
  when 1
    a = "c#{a}a"
  when 2
    a = "a#{a}c"
  when 0
    a = "b#{a}b"
  end
end

if a.reverse == s
  puts n / 2
else
  puts -1
end

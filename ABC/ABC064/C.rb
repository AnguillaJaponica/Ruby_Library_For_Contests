n = gets.to_i
a = gets.split.map(&:to_i)
num = [0]*8
r = 0

8.times do |i|
  num[i] = a.count{|j| j>=r && j<r+400}
  r += 400
end

overs = a.count{|j| j>=3200}

ans = num.count{|i| i!=0}
if ans == 0 && overs > 0
  puts "1 #{ans+overs}"
else
  puts "#{ans} #{ans+overs}"
end

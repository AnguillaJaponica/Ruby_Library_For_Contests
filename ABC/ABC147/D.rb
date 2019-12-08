n = gets.to_i
integers = gets.split(' ').map(&:to_i).sort!
new_integers = []

(0..integers.length-2).each do |i|
  str = ''
  (0..integers[i].to_s(2).length-1).each do |j|
    (0..integers[i+1].to_s(2).length-1).each do |k|
      if integers[i].to_s(2)[j] != integers[i+1].to_s(2)[k]
        str+'1'
      else
        str+'0'
      end
    end
  end
  new_integers.push(str.to_i)
end

ans = 1
new_integers.each do |i|
  ans *= i
end

puts ans.div(10**9 + 7)

n = gets.to_i
a = gets.split.map(&:to_i)
sum = a.inject(:+)
if sum % n != 0
  p -1
else
  ave = sum / n
  b, cnt = 0, 0
  a.each_with_index {|v, i|
    b += (v - ave)
    cnt += 1 if b == 0 && i != n - 1
  }
  p n - 1 - cnt
end

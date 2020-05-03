a,b,n = gets.split.map(&:to_i)
maximum = 0

(1..n).each do |x|
  num = (a*x) / b - a * (x/b)
  if num >= maximum
    maximum = num
  end
end

puts maximum
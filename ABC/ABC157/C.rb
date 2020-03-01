n, m = gets.split.map(&:to_i)
disignation = []
ans = '-1'
flag = false
m.times do
  disignation << gets.split.map(&:to_i)
end
model = '1' + '0' * (n - 1)

digits = []
disignation.each do |d|
  if digits.include?(d[0]) && model[d[0] - 1] != d[1].to_s
    flag = true
    break
  else
    model[d[0] - 1] = d[1].to_s
  end
  digits << d[0]
end

unless flag
  ans = model
end

if n != 1 && model[0] == '0'
  ans = '-1'
end

if m == 0 && n == 1
  ans = '0'
end

puts ans
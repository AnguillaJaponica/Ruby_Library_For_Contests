s = gets.to_i

def calc(x)
  if x.even? then
    x = x/2
  else
    x = (x*3)+1
  end
  x
end

line = []
temp = 0

(1..s).each do |i|
  line << calc(i)
end

print line
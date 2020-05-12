c = gets.split.map(&:to_i)
a = c[0] / 10.0
b = c[1]
a += 11.25
a %= 360
H = %w[N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]
e = H[(a / 22.5).to_i]
s = (b / 60.0).round(1)
N = [0.2,1.5,3.3,5.4,7.9,10.7,13.8,17.1,20.7,24.4,28.4,32.6]
k = 0
N.each_with_index do |n, i| k = i + 1 if n < s;end

if k == 0
  puts "C 0"
else
  puts "#{e} #{k}"
end

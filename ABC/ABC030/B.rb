n, m = gets.chomp.split.map(&:to_i)
n = n % 12
hour = 30

answer = (n * hour - m * 5.5).abs
answer = 360 - answer if answer >= 180
puts answer

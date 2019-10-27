start_time = Time.now

numbers = []
input_num = 10000000019

(2..input_num/2).each do |i|
  if input_num % i == 0
    numbers.push(i + input_num / i -2)
  end
end

puts numbers.sort![0]
p "処理概要 #{Time.now - start_time}s"

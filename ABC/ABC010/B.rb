n = gets.to_i
flowers = gets.split.map(&:to_i)
count = 0

def need_picking?(flower)
  flower % 2 == 0 || flower % 5 == 0
end

flowers.each do |flower|
  while need_picking?(flower)
    flower -= 1
    count += 1
  end
end

puts count



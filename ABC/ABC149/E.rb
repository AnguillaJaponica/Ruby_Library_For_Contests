n, m = gets.split.map(&:to_i)
powers = gets.split.map(&:to_i).sort.reverse

shakehands = []
hapiness = 0

n.times do |i|
  shakehands.push([2, powers[i]])
end

m.times do
  hand = 2
  loop do
    if shakehands[0][0] > 0
      if hand != 0
        hapiness += shakehands[0][1]
        shakehands[0][0] -= 1
        hand -= 1
      else
        next
      end
    else
      shakehands.shift
      if shakehands[0][0] > 0
        if hand != 0
          hapiness += shakehands[0][1]
          shakehands[0][0] -= 1
          hand -= 1
        else
          next
        end
      end
    end
  end
end

puts hapiness

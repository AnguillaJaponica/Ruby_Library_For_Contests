n = gets.to_i
cards = gets.split.map(&:to_i).sort.reverse
alice = 0
bob = 0

loop do
  if cards.length != 0
    alice += cards.pop
  else
    break
  end

  if cards.length != 0
    bob += cards.pop
  else
    break
  end
end

puts (alice - bob).abs

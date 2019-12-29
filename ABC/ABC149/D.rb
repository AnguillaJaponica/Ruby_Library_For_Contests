n, k = gets.split.map(&:to_i)
r,s,p = gets.split.map(&:to_i)
T = gets.chomp
point = 0
actual_hands = []

def win_battle(r,s,p,hand)
  if hand == 'r'
    return p
  elsif hand == 's'
    return r
  else
    return s
  end
end

def win_hand(hand)
  if hand == 'r'
    return 'p'
  elsif hand == 's'
    return 'r'
  else
    return 's'
  end
end

n.times do |i|
  com_hand = T[i]
  if i <= k - 1
    point += win_battle(r,s,p,com_hand)
    actual_hands.push(win_hand(com_hand))
  else
    if actual_hands[i-k] != win_hand(com_hand)
      point += win_battle(r,s,p,com_hand)
      actual_hands.push(win_hand(com_hand))
    else
      actual_hands.push('')
    end
  end
end

puts point



txa, tya, txb, tyb, t, v = gets.split.map(&:to_i)
n = gets.to_i
ans = 'NO'

n.times do
  gpx, gpy = gets.split.map(&:to_i)
  route_length = Math.sqrt((gpx - txa) ** 2 + (gpy - tya) ** 2) + Math.sqrt((gpx - txb) ** 2 + (gpy - tyb) ** 2)
  if route_length <= t * v
    ans = 'YES'
    break
  end
end

puts ans


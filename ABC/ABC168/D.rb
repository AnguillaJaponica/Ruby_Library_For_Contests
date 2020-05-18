n, m = gets.split.map(&:to_i)
room_path = {}
m.times do
  r, p = gets.split.map(&:to_i)
  if room_path[r]
    room_path[r] << p
  else
    room_path[r] = [p]
  end
  if room_path[p]
    room_path[p] << r
  else
    room_path[p] = [r]
  end
end

visited = []
count = 0
room_path.each do |r, paths|
  if r == 1
    count += 1
    visited << 1
    break
  end

  paths.each do |i|
    if i == 1
      count += 1
      break
    else

    end
  end

end
h, w = gets.split.map(&:to_i)
row = Array.new(w, false)
area = Array.new(h, row)

dx = [-1,0,1,-1,1,-1,0,1]
dy = [-1,-1,-1,0,0,1,1,1]

h.times do |i|
  w.times do |j|
    next if area[i][j] == true
    8.times do |k|
      x = i + dx[k]
      y = j + dy[k]
      if x >= 0 && x < h && y >= 0 && y < w && area[x][y] == 'false'
        area[i][j] = true
      end
    end
  end
end

count = 0
area.each do |row|
  count += row.count(true)
end

puts count
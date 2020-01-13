h, w = gets.split.map(&:to_i)

strings = []
h.times do
  strings << gets.chomp
end

dx = [-1,0,1,-1,1,-1,0,1]
dy = [-1,-1,-1,0,0,1,1,1]

h.times do |i|
  w.times do |j|
    next if strings[i][j] == '#'
    counter = 0

    8.times do |k|
      x = i + dx[k]
      y = j + dy[k]
      counter += 1 if x >= 0 && x < h && y >= 0 && y < w && strings[x][y] == '#'
    end
    strings[i][j] = counter.to_s
  end
end

strings.each do |string|
  puts "#{string}\n"
end
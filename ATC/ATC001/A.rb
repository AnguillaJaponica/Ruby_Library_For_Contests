h, w = gets.split.map(&:to_i)
maze = []

h.times do
  maze.push(gets.split.map(' '))
end

reached_map = h.times.map{|i|
  w.times.map {|j|
    false
  }
}

def search(x, y)
  #迷路の外側か壁の場合は何もしない
  if (x < 0 || w <= x || y < 0 || h <= y || maze[x][y] == '#')
    return
  end
  if reached[x][y]
    return
  end
  reached[x][y] = true
  if maze[x][y] == 'g'
    puts 'yes'
  end

  search(x+1, y)
  search(x-1, y)
  search(x, y+1)
  search(x, y-1)
end

puts maze
h, w = gets.split.map(&:to_i)
maze = []

h.times do
  maze << gets.split
end

class Maze
  attr_reader :w, :h, :visited, :maze, :prev

  def initialize(maze)
    # 二次元配列データでmazeを渡す
    @maze = maze
    @w = @maze[0].length
    @h = @maze.length
    # 訪問済みかどうかのフラグをfalseで初期化。@visited[h][w] = true
    @visited = Array.new(h){ Array.new(w){ false } }
    # 直前の地点(x, y)を[-1, -1]で初期化。@prev[h][w] = [-1, -1]
    @prev = Array.new(h){ Array.new(w){ Array.new(2){ -1 } } }
  end

  def find_start
    h.times do |y|
      w.times do |x|
        return [x, y] if @maze[y][x] == "S"
      end
    end
  end

  def goal_search
    queue = Array.new
    start = find_start
    queue.push(start)
    @visited[start[1]][start[0]] = true
    # 右左下上の探索
    dx = [+1,-1, 0, 0];
    dy = [ 0, 0,+1,-1];
    # bfsで探索
    while !queue.empty?
      pt = queue.first
      queue.shift
      dx.length.times do |i|
        x = pt[0] + dx[i]
        y = pt[1] + dy[i]
        # 訪問してなくて、壁じゃない地点の場合、直前の地点を記録
        if @visited[y][x] == false && @maze[y][x] != "*"
          @prev[y][x][0] = pt[0]
          @prev[y][x][1] = pt[1]
          # ゴールの場合、終了
          if @maze[y][x] == "G"
            goal = [x, y]
            return goal
          else
            # スペース(枝)の場合、キューに入れて訪問済みに
            queue.push([x, y])
            @visited[y][x] = true
          end
        end
      end
    end
  end

  def solve
    # ゴール地点を取得し、@prevを遡る
    pt = goal_search
    print "ゴール位置：[#{pt[0]}, #{pt[1]}]\n\n" if $debug
    while true
      pt = [@prev[pt[1]][pt[0]][0], @prev[pt[1]][pt[0]][1]]
      break if @maze[pt[1]][pt[0]] != " "
      @maze[pt[1]][pt[0]] = "$"
    end
    puts "答えの出力：" if $debug
    display
  end

  def display
    @maze.each do |y|
      y.each do |x|
        print x
      end
      print "\n"
    end
  end
end

m = Maze.new(maze)
m.solve

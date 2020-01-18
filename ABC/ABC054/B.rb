n, m = gets.chomp.split.map(&:to_i)
as = n.times.map {gets.chomp}
bs = m.times.map {gets.chomp}
(0..n - m).each do |i|
  (0..n - m).each do |j|
    ans_flag = true
    (0..m - 1).each do |x|
      (0..m - 1).each do |y|
        if as[i + x][j + y] != bs[x][y]
          ans_flag = false
          break
        end
      end
      break unless ans_flag
    end
    if ans_flag
      puts "Yes"
      exit 0
    end
  end
end

puts "No"

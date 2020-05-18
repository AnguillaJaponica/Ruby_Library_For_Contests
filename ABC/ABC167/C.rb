N,M,X = gets.chomp.split.map(&:to_i)
C = N.times.map{gets.chomp.split.map(&:to_i)}

bits = [0, 1].repeated_permutation(N).to_a
ans = 10**7

bits.each do |bit|
  rikaido = [0] * (M + 1)
  (0..N-1).each do |j|
    if bit[j] == 1
      (0..M).each do |k|
        rikaido[k] += C[j][k]
        if rikaido[1..M].all? {|n| n >= X}
          ans = rikaido[0] if ans >= rikaido[0]
        end
      end
    end
  end
end

puts ans == (10**7) ? -1 : ans

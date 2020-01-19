n = gets.to_i
combi = (1..9).repeated_combination(2).to_a
counts = []

combi.each do |c|
  count = 0
  next if (c.to_s.reverse.to_i > n || c > n)
  if c[0] == c[1]
    keta = 1
    loop do
      if c[0]*keta <= n
        count += 1
        keta += 1
      else
        counts << count
        break
      end
    end
  else
    between_keta = 0
    loop do
      rest_keta = n.to_s.length - 2
      if between_keta >= rest_keta
      counts << (between_keta-rest_keta) * 90
    end
  end
end
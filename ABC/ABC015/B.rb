n = gets.to_i
softs = gets.split.map(&:to_i)
no_bug_softs = []

softs.each do |soft|
  if soft != 0
    no_bug_softs.push(soft)
  end
end

puts (no_bug_softs.inject(:+).to_f / no_bug_softs.length).ceil
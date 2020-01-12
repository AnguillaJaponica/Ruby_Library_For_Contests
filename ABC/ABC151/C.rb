n, m = gets.split.map(&:to_i)
contests = {}

m.times do
  p, s = gets.split
  if contests[p].nil?
    contests[p] = [s]
  else
    contests[p] << s
  end
end

ac_count = 0
wa_count = 0

contests.each_value do |contest|
  if !(contest.include?('AC'))
    next
  else
    contest.each do |c|
      if c == 'AC'
        ac_count += 1
        break
      else
        wa_count += 1
      end
    end
  end
end

puts "#{ac_count} #{wa_count}"


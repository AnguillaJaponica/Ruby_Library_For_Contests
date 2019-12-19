w = gets.chomp

variation = w.split('').uniq

flag = true

variation.each do |str|
  if w.count(str) % 2 != 0
    puts 'No'
    flag = false
    break
  end
end

if flag
  puts 'Yes'
end

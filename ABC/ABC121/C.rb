n, m = gets.split.map(&:to_i)
stores = []
money = 0
count = 0

n.times do
  stores << gets.split.map(&:to_i)
end

(stores.sort_by{|a| a[0]}).each do |store|
  if count + store[1] >= m
    money += store[0] * (m - count)
    break
  else
    count += store[1]
    money += store[0] * store[1]
  end
end

puts money
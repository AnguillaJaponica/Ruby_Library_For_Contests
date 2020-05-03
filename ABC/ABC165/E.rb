n, m, q = gets.split.map(&:to_i)
num_sets = []
maximum_dis = 0
capa = 0
q.times do
  num_sets << gets.split.map(&:to_i)
end
(num_sets.sort_by!{|s| s[3]}).reverse!

num_sets.each do |set|
  dis = set[1] -set[0]
  if dis > maximum_dis
    maximum_dis = dis
    capa = set[2]
  end
end




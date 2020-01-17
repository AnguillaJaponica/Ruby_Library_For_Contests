n,m,x,y=gets.split.map(&:to_i)
X=gets.split.map(&:to_i)
Y=gets.split.map(&:to_i)
puts X.max < Y.min && x < Y.min && Y.min <= y ? "No War" : "War"
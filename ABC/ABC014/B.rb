n,x,*d=`dd`.split.map &:to_i
a,b=0,x.to_s(2).reverse
n.times{|i|a+=d[i]if b[i]=="1"}
p a

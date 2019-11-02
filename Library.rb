# 最小公倍数
625.lcm(735)

# 最大公約数
625.gcd(735)

# 最大公約数と最小公倍数を同時に求めて配列で返す。
624.gcdlcm(735)

# 幅優先探索
# 深さ優先探索
# 入力が地図のパターン
#
#
h, w = gets.split.map(&:to_i)
c = h.times.map {gets.chomp} # 文字列の配列
c = h.times.map {gets.chomp.chars} # 一文字ずつ切る
c = gets.split(' ').map(&:to_i) # 数値の場合


# 入力が二次元配列のパターン
h, w = gets.split.map(&:to_i)
a = h.times.map {gets.split.map(&:to_i)}

# 入力が幅と高さのみ。二次元配列を自分で作る場合。
h, w = gets.split.map(&:to_i)
a = h.times.map{|i|
  w.times.map {|j|
    # i,jによる初期値
    # i == j ? 1 : 0 単位行列
  }
}

# 配列の奇数番目や偶数番目を取り出して新たな配列にする
odd = ary.group_by{|i| i%2}[1]
even = ary.group_by{|i| i%2}[0]

# 数値からなる配列のうち、奇数のものだけ・偶数のものだけとる
odd = ary.select(&:odd?)
even = ary.select(&:even?)

# Gooooogle→Gogle
'Gooooooogle'.squeeze

# 文字列→日時
require 'time'
Time.parse('2013-11-22')
DateTime.parse('2013-12-12')

# 処理時間を測りたい
start_time = Time.now
p "処理概要 #{Time.now - start_time}s" # 最後に挿入

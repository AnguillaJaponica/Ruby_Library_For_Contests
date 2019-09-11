# 最小公倍数
625.lcm(735)

# 最大公約数
625.gcd(735)

# 最大公約数と最小公倍数を同時に求めて配列で返す。
624.gcdlcm(735)

# 幅優先探索
# 深さ優先探索

# 入力が地図のパターン
h, w = gets.split.map(&:to_i)
c = h.times.map {gets.chomp} # 文字列の配列
c = h.times.map {gets.chomp.chars}

# 入力が二次元配列のパターン
h, w = gets.split.map(&:to_i)
a = h.times.map {gets.split.map(&:to_i)}

# 入力が幅と高さのみ。二次元配列を自分で作る場合。
h, w = gets.split.map(&:to_i)
a = h.times.map{|i|}
  w.times.map {|j|
    # i,jによる初期値
    # i == j ? 1 : 0 単位行列
  }
}


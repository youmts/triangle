class Triangle
  def self.what_kind_of(a, b, c)
    # 辺の長さが0以下は三角形でない
    return :not if a <= 0
    return :not if b <= 0
    return :not if c <= 0

    # 任意の二辺の長さの合計が残りの辺より短いと三角形でない
    return :not if a + b <= c
    return :not if b + c <= a
    return :not if c + a <= b

    # 正三角形
    return :equilateral if a == b && b == c

    # 二等辺三角形
    return :isosceles if a == b || b == c || c == a

    # 普通の三角形
    :normal
  end
end

if $0 == __FILE__
  sides = ARGV.join(" ").split(",").map(&:to_i)
  puts case Triangle.what_kind_of(*sides)
    when :normal then "不等辺三角形ですね！"
    when :isosceles then "二等辺三角形ですね！"
    when :equilateral then "正三角形ですね！"
    when :not then "三角形じゃないです＞＜"
  end
end
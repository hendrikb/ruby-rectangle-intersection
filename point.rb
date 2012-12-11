class Point
  attr_accessor :x,:y

  def initialize x,y
    @x = x
    @y = y
  end

  def == point
    @x == point.x and @y == point.y
  end

  def to_s
    "(#{@x}:#{@y})"
  end
end

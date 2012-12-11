require_relative './point.rb'

class Rectangle
  attr_reader :top_left, :top_right, :bottom_left, :bottom_right, :name

  def initialize name, bottom_left, top_right
    @name = name
    @bottom_left = bottom_left
    @top_right = top_right

    @bottom_right = Point.new top_right.x, bottom_left.y
    @top_left = Point.new bottom_left.x, top_right.y
  end

  def range
    # The right x is excluded
    @top_left.x...@bottom_right.x
  end

  def height
    @bottom_left.y...@top_right.y
  end

  def intersect? another_rectangle
    [ another_rectangle.bottom_right, another_rectangle.bottom_left,
      another_rectangle.top_right, another_rectangle.top_left].each do |point|
        return true if range.include?(point.x) and height.include?(point.y)
    end
    return false
  end

  def to_s
    "#{@name.upcase}: bottom_left #{@bottom_left}, top_right #{@top_right}"
  end
end

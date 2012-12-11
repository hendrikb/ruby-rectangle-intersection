require_relative './point.rb'

class Rectangle
  attr_accessor :top_left, :bottom_right, :name

  def initialize name, top_left, bottom_right
    @name = name
    @top_left = top_left
    @bottom_right = bottom_right
  end

  def range
    # The right x is excluded
    @top_left.x...@bottom_right.x
  end

  def to_s
    "#{@name.upcase}: top_left #{@top_left}, bottom_right #{@bottom_right}"
  end
end

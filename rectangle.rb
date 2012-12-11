require_relative './point.rb'

class Rectangle
  attr_accessor :top_left, :bottom_right, :name

  def initialize name, top_left, bottom_right
    @name = name
    @top_left = top_left
    @bottom_right = bottom_right
  end

  def beginning
    @top_left.x
  end

  def starts? point
    @top_left == point
  end

  def end
    @bottom_right.x
  end

  def to_s
    "#{@name.upcase}: top_left #{@top_left}, bottom_right #{@bottom_right}"
  end
end

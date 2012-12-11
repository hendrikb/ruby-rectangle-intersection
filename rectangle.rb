require_relative './point.rb'

class Rectangle
  attr_accessor top_left, bottom_right, name

  def initialize name, top_left, bottom_right
    self.name = name
    self.top_left = top_left
    self.bottom_right = bottom_right
  end

  def beginning
    top_left.x
  end

  def end
    bottom_right.x
  end
end

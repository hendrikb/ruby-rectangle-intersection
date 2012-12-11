class EventPoint
  attr_reader :x, :rectangle

  def initialize x, rectangle
    @x = x
    @rectangle = rectangle
  end

  def starts?
    @x == @rectangle.top_left.x
  end

  def to_s
    beginning_or_end = starts? ? "begin of" : "end of"
    "(#{x} #{beginning_or_end} #{@rectangle.name})"
  end
end

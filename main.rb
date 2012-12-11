require_relative './sweep_line:_status.rb'
require_relative './rectangle.rb'
require_relative './point.rb'

require 'pry'

sweep_line_status = SweepLineStatus.new

rectangles = [
  Rectangle.new("R1", Point.new(5,10), Point.new(35,30)),
	Rectangle.new("R2", Point.new(25,15), Point.new(45,55)),
	Rectangle.new("R3", Point.new(75,40), Point.new(105,75)),
	Rectangle.new("R4", Point.new(95,15), Point.new(105,30)),
	Rectangle.new("R5", Point.new(60,20), Point.new(80,45)),
	Rectangle.new("R6", Point.new(50,65), Point.new(65,90)),
	Rectangle.new("R7", Point.new(80,80), Point.new(115,90)),
	Rectangle.new("R8", Point.new(55,10), Point.new(70,30))
]

require_relative './sweep_line_status.rb'
require_relative './rectangle.rb'
require_relative './point.rb'
require_relative './event_point.rb'


require 'pry'

sweep_line_status = SweepLineStatus.new
event_point_schedule = Array.new

rectangles = [
  Rectangle.new('R1', Point.new(5,10), Point.new(35,30)),
  Rectangle.new('R2', Point.new(25,15), Point.new(45,55)),
  Rectangle.new('R3', Point.new(75,40), Point.new(105,75)),
  Rectangle.new('R4', Point.new(95,15), Point.new(105,30)),
  Rectangle.new('R5', Point.new(60,20), Point.new(80,45)),
  Rectangle.new('R6', Point.new(50,65), Point.new(65,90)),
  Rectangle.new('R7', Point.new(80,80), Point.new(115,90)),
  Rectangle.new('R8', Point.new(55,10), Point.new(70,30))
]


rectangles.each do |rectangle|
  event_point_schedule.push EventPoint.new(rectangle.top_left.x, rectangle)
  event_point_schedule.push EventPoint.new(rectangle.bottom_right.x, rectangle)
end

event_point_schedule.sort! { |a,b| a.x <=> b.x }

require 'pry'; binding.pry
while not event_point_schedule.empty? do
  event_point = event_point_schedule.delete_at(0)
  break unless event_point

  if event_point.starts? then
    sweep_line_status.report_intersection event_point
    sweep_line_status.push event_point
  else
    sweep_line_status.delete event_point
  end
end
puts 'finished.'

class SweepLineStatus < Array
  def report_intersection event_point
    self.each do |point_in_sls|
      sweepline_range = point_in_sls.rectangle.range
      puts "Sweepline of #{point_in_sls.rectangle.name} intersects with sweepline of #{event_point.rectangle.name}" if sweepline_range.include? event_point.x
    end
  end
end

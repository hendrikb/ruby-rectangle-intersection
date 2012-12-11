class SweepLineStatus < Array
  def report_intersection event_point
    self.each do |point_in_sls|
      sweepline_range = point_in_sls.rectangle.range
      if sweepline_range.include? event_point.x
        puts "Sweepline of #{point_in_sls.rectangle.name} intersects with sweepline of #{event_point.rectangle.name}"
        puts "\t --> #{point_in_sls.rectangle.name} really intersects with #{event_point.rectangle.name}" if point_in_sls.rectangle.intersect? event_point.rectangle
      end
    end
  end
end

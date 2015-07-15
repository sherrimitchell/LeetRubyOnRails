class Layover < ActiveRecord::Base
  belongs_to :user

  def meetup
    arrival_overlaps = Layover.where(short_name: self.short_name).
      where("arrival_time <= ? AND dept_time >= ?",
        self.arrival_time, self.arrival_time + 2.hours)
    departure_overlaps = Layover.where(short_name: self.short_name).
      where("arrival_time <= ? AND dept_time >= ?",
        self.dept_time - 2.hours, self.dept_time)
    (arrival_overlaps + departure_overlaps).uniq
  end

end

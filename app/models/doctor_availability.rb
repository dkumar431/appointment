class DoctorAvailability < ApplicationRecord
  attr_accessor :date_range
  belongs_to :doctor
  belongs_to :clinic

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end
  
end

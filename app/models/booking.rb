class Booking < ApplicationRecord
  belongs_to :patient
  belongs_to :clinic
  belongs_to :doctor
  belongs_to :slot
end

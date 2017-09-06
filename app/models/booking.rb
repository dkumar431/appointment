class Booking < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :clinic
  belongs_to :doctor
  belongs_to :slot
end

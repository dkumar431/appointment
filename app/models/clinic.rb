class Clinic < ApplicationRecord
    has_many :clinic_doctors
    has_many :doctors, through: :clinic_doctors
end

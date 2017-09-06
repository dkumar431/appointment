class Clinic < ApplicationRecord
    has_many :clinics_doctors
    has_many :doctors, through: :clinics_doctors
end

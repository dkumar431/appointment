class Doctor < ApplicationRecord
    has_many :clinics_doctors
    has_many :clinics, through: :clinics_doctors
end

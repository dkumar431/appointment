class ClinicsDoctor < ApplicationRecord
  belongs_to :clinic
  belongs_to :doctor
  def self.get_available_doctors_clinics
    doctors = Doctor.all.pluck(:id,:name)
    clinics = Clinic.all.pluck(:id,:name)
    search_suggestions = {
      doctors: doctors,
      clinics: clinics
    }
  end 
end

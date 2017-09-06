class ClinicDoctor < ApplicationRecord
    belongs_to :clinic
    belongs_to :doctor
    def self.get_available_doctors_clinics
      doctors = Doctor.all.pluck(:id,:name).compact.map {|doctor| {label: doctor.second, value: doctor.first, type: 1} } 
      clinics = Clinic.all.pluck(:id,:name).compact.map {|clinic| {label: clinic.second, value: clinic.first, type: 2} } 
      arr = Array.new
      arr.append doctors
      arr.append clinics
      arr.flatten
      
    end 
end

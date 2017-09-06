# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Clinic.delete_all
Clinic.create(name: "Continental Hospital")
Clinic.create(name: "Care Hostpital")
Clinic.create(name: "KIMS Healthcare")
Clinic.create(name: "Apollo Health")

Doctor.delete_all
Doctor.create(name: "Deepak Padhy")
Doctor.create(name: "Anil K")
Doctor.create(name: "Ashwini Pandey")
Doctor.create(name: "Vamsi Krishna")
Doctor.create(name: "Tilak Yadav")
Doctor.create(name: "Hemali Jain")
Doctor.create(name: "Ekta Verma")
Doctor.create(name: "Sameer Yadav")

ClinicsDoctors.delete_all
ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.first.id)
ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.second.id)
ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.third.id)


ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.fourth.id)
ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.fourth.id)
ClinicsDoctors.create(doctor_id:Doctor.first.id,clinic_id:Clinic.fourth.id)


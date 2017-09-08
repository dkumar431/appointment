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
Doctor.create(name: "Deepak Padhy", email: "test@123.com", password: "12345678")
Doctor.create(name: "Anil K", email: "test@124.com", password: "12345678")
Doctor.create(name: "Ashwini Pandey", email: "test@125.com", password: "12345678")
Doctor.create(name: "Vamsi Krishna", email: "test@126.com", password: "12345678")
Doctor.create(name: "Tilak Yadav", email: "test@127.com", password: "12345678")
Doctor.create(name: "Hemali Jain", email: "test@128.com", password: "12345678")
Doctor.create(name: "Ekta Verma", email: "test@129.com", password: "12345678")
Doctor.create(name: "Sameer Yadav", email: "test@120.com", password: "12345678")

ClinicDoctor.delete_all
ClinicDoctor.create(doctor_id:Doctor.first.id,clinic_id:Clinic.first.id)
ClinicDoctor.create(doctor_id:Doctor.first.id,clinic_id:Clinic.second.id)
ClinicDoctor.create(doctor_id:Doctor.first.id,clinic_id:Clinic.third.id)


ClinicDoctor.create(doctor_id:Doctor.second.id,clinic_id:Clinic.first.id)
ClinicDoctor.create(doctor_id:Doctor.second.id,clinic_id:Clinic.second.id)
ClinicDoctor.create(doctor_id:Doctor.second.id,clinic_id:Clinic.third.id)

ClinicDoctor.create(doctor_id:Doctor.third.id,clinic_id:Clinic.first.id)
ClinicDoctor.create(doctor_id:Doctor.third.id,clinic_id:Clinic.third.id)
ClinicDoctor.create(doctor_id:Doctor.third.id,clinic_id:Clinic.fourth.id)

ClinicDoctor.create(doctor_id:Doctor.fourth.id,clinic_id:Clinic.second.id)
ClinicDoctor.create(doctor_id:Doctor.fourth.id,clinic_id:Clinic.third.id)
ClinicDoctor.create(doctor_id:Doctor.fourth.id,clinic_id:Clinic.fourth.id)

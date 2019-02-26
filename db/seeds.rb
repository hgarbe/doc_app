
Doctor.destroy_all
Patient.destroy_all


roles = ['confirmed', 'unconfirmed']
10.times do
  patient = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
 
  5.times do 
    doctor = Doctor.create(
      name: Faker::Beer.brand
    )

    Appointment.create(
      role: roles.sample,
      patient_id: patient.id,
      doctor_id: doctor.id
    )
  end
end

puts "Data Seeded."
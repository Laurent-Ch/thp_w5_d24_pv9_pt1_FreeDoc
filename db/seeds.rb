specialty_array = ["Cardiologue", "Dermatologue", "Gynécologue", "Généraliste", "Neurologue", "Pédiatre", "Pneumologue", "Urologue"]

# Doctors
100.times do 
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: specialty_array[rand(0..7)],
    zip_code: rand(1000..95900)
  )
end

# Patients
100.times do 
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# Appointments?
50.times do
  appointment = Appointment.create!(
    date: Faker::Date.between(from: '2021-01-01', to: '2021-12-31'),
    doctor: Doctor.find(rand(1..100)), patient: Patient.find(rand(1..100))
  )
end


 specialty_array = ["Cardiologue", "Dermatologue", "Gynécologue", "Généraliste", "Neurologue", "Pédiatre", "Pneumologue", "Urologue"]


# City
# 20.times do 
#   city = City.create!(name: Faker::Address.city)
# end

# Doctors
# 100.times do 
#   doctor = Doctor.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     zip_code: rand(1000..95900),
#     city: City.find(rand(1..20))
#     # Méhtode alternative
#     # city_array[rand(0...city_array.length).id]
#   )
# end

# # Patients
# 100.times do 
#   patient = Patient.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     city: City.find(rand(1..20))
#   )
# end

# # Specialty
8.times do |i|
  specialty = Specialty.create!(specialty: specialty_array[i])
end


# # Appointments
50.times do
  appointment = Appointment.create!(
    date: Faker::Date.between(from: '2021-01-01', to: '2021-12-31'),
    doctor: Doctor.find(rand(1..100)),
    patient: Patient.find(rand(102..152)),
    city: City.find(rand(1..20))
  )
end

# # Join_SD
50.times do 
  join = JoinSd.create!(
    doctor: Doctor.find(rand(1..100)),
    specialty: Specialty.find(rand(1..8))
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |index|
    Doctor.create!(first_name: "Prénom#{index}", last_name:"Nom#{index}", specialty: "Spé#{index}", zip_code: "code n°00#{index}", cities_id: rand(1..20))
  end

20.times do |index|
    Patient.create!(first_name: "Prénom#{index}", last_name:"Nom#{index}", cities_id: rand(1..20))
end

20.times do |index|
    Appointment.create(date: (DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M") +index) , doctor_id: rand(1..20), patient_id: rand(1..20), cities_id: rand(1..20))
end

20.times do |index|
    City.create!(city_name: "Ville#{index}")
end

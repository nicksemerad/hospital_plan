5.times do
 doctor = Doctor.create(
   name: Faker::TvShows::StarTrek.specie
)
  patient = Patient.create(
    name: Faker::TvShows::RickAndMorty.character
)

  3.times do
    appointment = Appointment.create(
      location: Faker::TvShows::GameOfThrones.city,
      time: Faker::Date.forward(days: 50),
      doctor_id: doctor.id,
      patient_id: patient.id
    )
  end
end
puts 'Data has been seeded'
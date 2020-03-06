5.times do
 doctor = Doctor.create(
   name: Faker::TvShows::StarTrek.specie
)
  patient = Patient.create(
    Faker::TvShows::RickAndMorty.character
)

  3.times do
    appointment = Appointment.create(
      first_name: Faker::TvShows::RickAndMorty.character,
      last_name: Faker::TvShows::StarTrek.specie
    )
  end
end
puts 'Data has been seeded'
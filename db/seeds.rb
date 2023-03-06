# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create a user
user = User.create(email: 'example@example.com', password: 'password')

# create some tutors for the user
tutors = [
  {
    name: 'John Doe',
    image: 'https://example.com/john-doe.jpg',
    description: 'Experienced tutor in math and science',
    price: 50.0,
    city: 'San Francisco',
    user: user
  },
  {
    name: 'Jane Smith',
    image: 'https://example.com/jane-smith.jpg',
    description: 'English and history tutor with a passion for teaching',
    price: 40.0,
    city: 'New York',
    user: user
  },
  {
    name: 'Bob Johnson',
    image: 'https://example.com/bob-johnson.jpg',
    description: 'Expert in computer programming and web development',
    price: 60.0,
    city: 'Los Angeles',
    user: user
  }
]

# create each tutor record in the database
tutors.each do |tutor_params|
  Tutor.create(tutor_params)
end

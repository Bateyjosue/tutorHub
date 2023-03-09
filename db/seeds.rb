# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Josh", mail: "josuebatey19@gmail.com",password: "000000")

# create a user
user = User.create(email: 'kene@gmail.com', password: 'password')

# create some tutors for the user
tutors = [
  {
    name: 'John Doe',
    image: 'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    description: 'Experienced tutor in math and science',
    price: 50.0,
    city: 'San Francisco',
    user: user
  },
  {
    name: 'Jane Smith',
    image: 'https://img.freepik.com/free-photo/close-up-shot-pretty-woman-with-perfect-teeth-dark-clean-skin-having-rest-indoors-smiling-happily-after-received-good-positive-news_273609-1248.jpg',
    description: 'English and history tutor with a passion for teaching',
    price: 40.0,
    city: 'New York',
    user: user
  },
  {
    name: 'Bob Johnson',
    image: 'https://img.freepik.com/free-photo/senior-man-face-portrait-wearing-bowler-hat_53876-148154.jpg',
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

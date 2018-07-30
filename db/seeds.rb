# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Lily', user_name: "nyuyz518", password: "password1" },
  { name: 'Claudia', user_name: "claud", password: "password2" }
])

  farms = Farm.create([
    {name: 'Green Hills Farm', location: "Melville", year_est: 1948},
    {name: 'Hudson Valley Farm', location: "Columbia County", year_est: 1962}
  ])

  products = Product.create([
  {name: 'Yellow Squash'},
  {name: 'Watermelon'},
  {name: 'Eggs'}
  ])

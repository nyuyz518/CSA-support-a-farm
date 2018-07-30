# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Lily', user_name: "nyuyz518", password: "password1" },
  { name: 'Claudia', user_name: "claud", password: "password2" },
  { name: 'Matt', user_name: "matty", password: "password3" },
  { name: 'Jared', user_name: "jaredd", password: "password4" },
])

farms = Farm.create([
    {name: 'Green Hills Farm', location: "Melville", year_est: 1948},
    {name: 'Hudson Valley Farm', location: "Columbia County", year_est: 1962}
  ])

products = Product.create([
  {name: 'Yellow Squash', farm_id: farms.sample.id},
  {name: 'Watermelon', farm_id: farms.sample.id},
  {name: 'Eggs', farm_id: farms.sample.id}
  ])

wish_list_items = WishListItem.create([
  {item: "blueberries", user_id: users.sample.id},
  {item: "apple", user_id: users.sample.id},
  {item: "chicken", user_id: users.sample.id}
  ])

share = Share.create([
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  {user_id: users.sample.id, farm_id: farms.sample.id},
  ])

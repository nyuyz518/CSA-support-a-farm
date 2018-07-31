# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { name: 'Lily', user_name: "nyuyz518", password: "password1" },
  { name: 'Claudia', user_name: "claud", password: "password2" },
  { name: 'Matt', user_name: "matty", password: "password3" },
  { name: 'Jared', user_name: "jaredd", password: "password4" },
]

users.each {|user| User.create(user)}

farms = [
  {name: 'Green Hills User', location: "Melville", year_est: 1948},
  {name: 'Hudson Valley Farm', location: "Columbia County", year_est: 1962}
]

farms.each {|farm| Farm.create(farm)}

products = [
{name: "Arugula"},
{name: "Basil"},
{name: "Beets"},
{name: "Blackberries"},
{name: "Blueberries"},
{name: "Broccoli"},
{name: "Cabbage"},
{name: "Carrots"},
{name: "Cauliflower"},
{name: "Celery"},
{name: "Chard"},
{name: "Chicory"},
{name: "Collards"},
{name: "Corn"},
{name: "Cucumber"},
{name: "Dandelions"},
{name: "Dill"},
{name: "Eggplant"},
{name: "Escarole"},
{name: "Fennel"},
{name: "Garlic"},
{name: "Green Beans"},
{name: "Herbs"},
{name: "Horseradish"},
{name: "Kale"},
{name: "Kohlrabi"},
{name: "Lettuce"},
{name: "Canteloupe"},
{name: "Mint"},
{name: "Mizuna"},
{name: "Mustard Greens"},
{name: "Onions"},
{name: "Parsley"},
{name: "Peaches"},
{name: "Bell Peppers"},
{name: "Plums"},
{name: "Potatoes"},
{name: "Radish"},
{name: "Raspberries"},
{name: "Sage"},
{name: "Scallions"},
{name: "Shallots"},
{name: "Spinach"},
{name: "Sprouts"},
{name: "Squash"},
{name: "Tatsoi"},
{name: "Tomatoes"},
{name: "Turnips"},
{name: "Watermelon"},
]

products = products.map { |product| product.merge( { farm_id: Farm.all.sample.id } ) }
products.each { |product| Product.create(product) }

wish_list_items = [
  {item: "blueberries"},
  {item: "apple"},
  {item: "chicken breasts"}
  ]

wish_list_items = wish_list_items.map { |item| item.merge( { user_id: User.all.sample.id } ) }
wish_list_items.each { |item| WishListItem.create(item) }
#
# share = {user_id: User.all.sample.id, farm_id: Farm.all.sample.id}

8.times do
  Share.create({user_id: User.all.sample.id, farm_id: Farm.all.sample.id}
)
end

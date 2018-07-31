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
  {item: "Arugula"},
  {item: "Basil"},
  {item: "Beets"},
  {item: "Blackberries"},
  {item: "Blueberries"},
  {item: "Broccoli"},
  {item: "Cabbage"},
  {item: "Carrots"},
  {item: "Cauliflower"},
  {item: "Celery"},
  {item: "Chard"},
  {item: "Chicory"},
  {item: "Collards"},
  {item: "Corn"},
  {item: "Cucumber"},
  {item: "Dandelions"},
  {item: "Dill"},
  {item: "Eggplant"},
  {item: "Escarole"},
  {item: "Fennel"},
  {item: "Garlic"},
  {item: "Green Beans"},
  {item: "Herbs"},
  {item: "Horseradish"},
  {item: "Kale"},
  {item: "Kohlrabi"},
  {item: "Lettuce"},
  {item: "Canteloupe"},
  {item: "Mint"},
  {item: "Mizuna"},
  {item: "Mustard Greens"},
  {item: "Onions"},
  {item: "Parsley"},
  {item: "Peaches"},
  {item: "Bell Peppers"},
  {item: "Plums"},
  {item: "Potatoes"},
  {item: "Radish"},
  {item: "Raspberries"},
  {item: "Sage"},
  {item: "Scallions"},
  {item: "Shallots"},
  {item: "Spinach"},
  {item: "Sprouts"},
  {item: "Squash"},
  {item: "Tatsoi"},
  {item: "Tomatoes"},
  {item: "Turnips"},
  {item: "Watermelon"}
]

products = products.map { |product| product.merge( { farm_id: Farm.all.sample.id } ) }
products.each { |product| Product.create(product) }

wish_list_items = [
  {item: "Arugula"},
  {item: "Basil"},
  {item: "Beets"},
  {item: "Blackberries"},
  {item: "Blueberries"},
  {item: "Broccoli"},
  {item: "Cabbage"},
  {item: "Carrots"},
  {item: "Cauliflower"},
  {item: "Celery"},
  {item: "Chard"},
  {item: "Chicory"},
  {item: "Collards"},
  {item: "Corn"},
  {item: "Cucumber"},
  {item: "Dandelions"},
  {item: "Dill"},
  {item: "Eggplant"},
  {item: "Escarole"},
  {item: "Fennel"},
  {item: "Garlic"},
  {item: "Green Beans"},
  {item: "Herbs"},
  {item: "Horseradish"},
  {item: "Kale"},
  {item: "Kohlrabi"},
  {item: "Lettuce"},
  {item: "Canteloupe"},
  {item: "Mint"},
  {item: "Mizuna"},
  {item: "Mustard Greens"},
  {item: "Onions"},
  {item: "Parsley"},
  {item: "Peaches"},
  {item: "Bell Peppers"},
  {item: "Plums"},
  {item: "Potatoes"},
  {item: "Radish"},
  {item: "Raspberries"},
  {item: "Sage"},
  {item: "Scallions"},
  {item: "Shallots"},
  {item: "Spinach"},
  {item: "Sprouts"},
  {item: "Squash"},
  {item: "Tatsoi"},
  {item: "Tomatoes"},
  {item: "Turnips"},
  {item: "Watermelon"}
]

wish_list_items = wish_list_items.map { |item| item.merge( { user_id: User.all.sample.id } ) }
wish_list_items.each { |item| WishListItem.create(item) }
#

4.times do
  Share.create(
    {user_id: User.all.sample.id, farm_id: Farm.all.sample.id, category: "Dairy", price: "200", start_date: Date.new(2018, 06, 23), end_date: Date.new(2018, 11, 24)},
    {user_id: User.all.sample.id, farm_id: Farm.all.sample.id, category: "Vegetables", price: "300", start_date: Date.new(2018, 06, 23), end_date: Date.new(2018, 11, 24)},
    {user_id: User.all.sample.id, farm_id: Farm.all.sample.id, category: "Fruit", price: "300", start_date: Date.new(2018, 06, 23), end_date: Date.new(2018, 11, 24)},
    {user_id: User.all.sample.id, farm_id: Farm.all.sample.id, category: "Meat", price: "400", start_date: Date.new(2018, 06, 23), end_date: Date.new(2018, 11, 24)}
  )
end

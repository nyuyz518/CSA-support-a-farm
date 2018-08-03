# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { user_name: "claudia", password: "password1" },
  { user_name: "lily", password: "password2" },
  { user_name: "lin", password: "password3" },
  { user_name: "rose", password: "password4" }
]

users.each {|user| User.create(user)}

Farm.create(name: 'Riverview Pastures', location: "Livingston, Columbia County, New York", year_est: 1962)

categories = [
  {name: 'Fruit (Full Share)', price_per_pickup: 9, pickup_count: 18, start_date: Date.new(2018,6,30), end_date: Date.new(2018,10,27)},
  {name: 'Fruit (Half Share)', price_per_pickup: 10, pickup_count: 9, start_date: Date.new(2018,6,30), end_date: Date.new(2018,10,20)},
  {name: 'Vegetable (Full Share)', price_per_pickup: 23, pickup_count: 26, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,17)},
  {name: 'Vegetable (Half Share)', price_per_pickup: 25, pickup_count: 13, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,10)},
  {name: 'Eggs (Full Share)', price_per_pickup: 6, pickup_count: 26, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,17)},
  {name: 'Eggs (Half Share)', price_per_pickup: 7, pickup_count: 13, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,10)},
  {name: 'Meat (Full Share)', price_per_pickup: 17, pickup_count: 26, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,17)},
  {name: 'Meat (Half Share)', price_per_pickup: 19, pickup_count: 13, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,10)},
  {name: 'Dairy (Full Share)', price_per_pickup: 12, pickup_count: 26, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,17)},
  {name: 'Dairy (Half Share)', price_per_pickup: 13, pickup_count: 13, start_date: Date.new(2018,5,26), end_date: Date.new(2018,11,10)}
]

categories.each {|category| Category.create(category)}

10.times do
  Share.create({user_id: User.all.sample.id, farm_id: Farm.all.sample.id, category_id: Category.all.sample.id})
end

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
wish_list_items.each { |item| WishListItem.create(item) }

20.times do
  UserItem.create({user_id: User.all.sample.id, wish_list_item_id: WishListItem.all.sample.id})
end

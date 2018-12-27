# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Property.destroy_all
Lease.destroy_all
Review.destroy_all
Message.destroy_all


@Joseph = User.create!(first_name: "Joseph", last_name: "Arias", email: "arias.joseph.a@gmail.com", password: "123", username: "jarias3", bio: "I like playing soccer and tacos")
@Liz = User.create!(first_name: "Liz", last_name: "Orellana", email: "liz@gmail.com", password: "123", username: "liz3", bio: "I like salsa dancing")
@Manuel = User.create!(first_name: "Manuel", last_name: "Arias", email: "manuel@gmail.com", password: "123", username: "manuel3", bio: "I like playing my guitar and playing fornite")
@Diana = User.create!(first_name: "Diana", last_name: "Ventura", email: "diana@gmail.com", password: "123", username: "diana3", bio: "Student and Mom of 4 dogs")
@Lina = User.create!(first_name: "Lina", last_name: "Medrano", email: "lina@gmail.com", password: "123", username: "lina3", bio: "Mother, Dancer and Student")
@Bianca = User.create!(first_name: "Bianca", last_name: "Alba", email: "bianca@gmail.com", password: "123", username: "bianca3", bio: "I love to travel and explore new hobbies")
@Emerson = User.create!(first_name: "Emerson", last_name: "Morales", email: "emerson@gmail.com", password: "123", username: "emerson3", bio: "Accountant by day and DJ at night")
@Anna = User.create!(first_name: "Anna", last_name: "Maze", email: "anna@gmail.com", password: "123", username: "anna3", bio: "Singer and Dancer")
@Bobby = User.create!(first_name: "Bobby", last_name: "Energy", email: "bobby@gmail.com", password: "123", username: "anna3", bio: "Meme Creator and Comedian")



@Property1 = Property.create!(name: "Land Between food and good music", image:"https://www.kiplinger.com/kipimages/pages/15051.jpg", address: "123 Titan St", city: "Nashville", state: "Tennessee", description: " Nashville is rapidly becoming as synonymous with food as it is music -- hello hot chicken and BBQ!", perks: "There are more than 150 venues in town and many of them offer live music every night for FREE", notes: "no pets, no smoking", price: 90, user_id: @Joseph.id)
@Property2 = Property.create!(name: "Cuisine motherland", image: "http://metroworld.com.au/images/property/675/10908.jpg", address: "567 Almond st", city: "New Orleans", state: "Louisiana", description: "The city is captivating and engaging and filling and, well, it'll probably leave you hungover, and rope you back for yet another weekend", perks: "There are, as you might imagine, endless bars in the Big Easy, but go beyond the tourist haunts and seek out the more quintessential watering holes", notes: "no pets, no smoking", price: 150, user_id: @Joseph.id)
@Property3 = Property.create!(name: "Runner's Paradise", image: "https://www.visittheusa.com/sites/default/files/styles/hero_m_1300x700/public/images/hero_media_image/2016-10/Getty_591648687_Brand_City_SanFrancisco_Hero_FinalCrop.jpg?itok=B5xJdS4I", address: "10011 King St", city: "San Francisco", state: "California", description: "Amazing and unique city, with beautiful hills and vistas and eateries and architecture you can’t find anywhere else", perks: "We still have one of the best city parks in the world (Golden Gate) with acres of trails that spill you onto the most random things.", notes: "no smoking", price: 200, user_id: @Manuel.id)
@Property4 = Property.create!(name: "Tacos and Barbecues", image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fcdn-image.travelandleisure.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F1600x1000%2Fpublic%2F1472153036%2Fbarton-springs-austin-texas-TDW0816.jpg%3Fitok%3Df1CwmRyu&w=1000&c=sc&poi=face&q=70", address: "3445 New St", city: "Austin", state: "Texas", description: "Its reputation as both the live music and barbecue capital of the world is well-founded", perks: "You'll find a dozen barbecue places that out-smoke most other major cities, and the wealth of local musical talent on any given night put even huge cities like New York or LA to shame", notes: "no smoking", price: 200, user_id: @Manuel.id)
@Property5 = Property.create!(name: "Runner's Paradise", image: "https://www.tripsavvy.com/thmb/87DLnBW2K5B4CtdHttrKoZeIc0Q=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/Charleston-carriage-tour-5a87467e642dca0036bf9299.jpg", address: "0943 Mtyle St", city: "Charleston", state: "South Carolina", description: "Spending any time beyond King St. Sure, the main drag is fantastic -- but so is pretty much every other part of town", perks: "Has one of the finest beer bars in the whole damn country", notes: "no smoking", price: 200, user_id: @Manuel.id)
@Property6 = Property.create!(name: "Little Havana", image: "https://img1.coastalliving.timeinc.net/sites/default/files/styles/4_3_horizontal_-_1200x900/public/image/2017/04/main/lincoln-road-mall-miami-509252849.jpg?itok=BIkm03Up", address: "10011 Croquetas St", city: "Miami", state: "Florida", description: "Come to Miami to enjoy some of the best food, nightlife, and beaches in America ", perks: "you can see some of the best street art in the world in Wynwood, feel like you're in another country in Little Havana and get a big-city experience among the steel-and-glass towers of Brickell.", notes: "no smoking", price: 200, user_id: @Diana.id)
@Property7 = Property.create!(name: "Sin City", image: "http://www.thencn.com/wp-content/uploads/2018/03/3.jpg", address: "431 Omnia st", city: "Las Vegas", state: "Nevada", description: "Vegas is where good decisions go to die. Las Vegas built its reputation on naughty behavior", perks: "And if you need some peace and quiet, you're just a short drive away from some of the most stunning landscapes on Earth: The mountains of Red Rock Canyon, the water of Lake Mead", notes: "no smoking", price: 200, user_id: @Diana.id)
@Property8 = Property.create!(name: "The historic palace", image: "http://www.savannah.com/wp-content/uploads/Savannah-Wormsloe-Historic-Site.jpg", address: "284 Scad St", city: "Savannah", state: "Georgia", description: "Beyond the history and nightlife, Savannah’s also got a pretty solid beach about 10 minutes away at Tybee Island, where during low tide you can walk nearly a quarter-mile out into the ocean", perks: "The bar scene is one of the best in the country, mostly because you can get beers to go and wander from bar to bar. This is part of why Savannah is one of the world’s biggest St. Patrick’s Day destinations", notes: "no smoking", price: 200, user_id: @Lina.id)
@Property9 = Property.create!(name: "The city that never sleeps", image: "https://www.burgessyachts.com/media/adminforms/locations/n/e/new_york_1.jpg", address: "193 Rockaway St", city: "New York", state: "New York", description: "You could spend a century in New York and still never eat, see, and do everything you're supposed to do.", perks: "If it's warm out, bike to the Cloisters or walk the Coney Island Boardwalk or head out to Rockaway for burgers on the beach", notes: "no smoking", price: 200, user_id: @Lina.id)


@Property10 = Property.create!(name: "Waterfront with extraordinary view", image: "https://d3qvqlc701gzhm.cloudfront.net/thumbs/6f798a5ad9c954b0a5837b6b7e5d82b69dfc15a9c2641b2cb9580bafb59cc36e-750.jpg", address: "9234 Falls St", city: "Sioux Falls", state: "South Dakota", description: "The city is impeccably clean and its cutting-edge restaurants and breweries can hold their own against any from a city 10 times the size.", perks: "the local hockey and basketball teams not only sell out their games, but play in two of the cooler arenas in all of minor-league sports: the Denny Sanford Premier Center and the Sanford Pentagon", notes: "no smoking", price: 200, user_id: @Joseph.id)
@Property11 = Property.create!(name: "The best position in Kanasas", image:"https://2qwuxr33v1ei2x0kjw27ngl7-wpengine.netdna-ssl.com/wp-content/uploads/Kansas-City-Scout-overlooking-KCMO-opt.jpg", address: "3985 Boulevard St", city: "Kansas City", state: "Missouri", description: "Put simply, Kansas City is a blast. It's one of those under-appreciated cities more people should move to -- spend a weekend here and you'll get why.", perks: "Take some time out to amble around singular museum experiences like the National World War I Museum and the Negro Leagues Baseball Museum, but also set aside an evening to eat and drink your way through Westport, down next-level candlelit cocktails at Julep, devour a house-smoked brisket burger at Char Bar", notes: "no pets, no smoking", price: 90, user_id: @Manuel.id)
@Property12 = Property.create!(name: "Land of the Arts", image:"https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/08/08/14/rhode-island.jpg?w968h681", address: "645 Westminster St", city: "Providence", state: "Rhode Island", description: "Providence is an oft-overlooked mecca of cultural offerings and intelligent, interesting people. Pedestrian-friendly streets and amazing architecture make this city a perfect place to stroll aimlessly.", perks: "The state’s access to the freshest seafood and local produce makes the culinary offerings second to none, and there is always something happening, from hockey games at the Dunkin' Donuts Center to art gallery openings and exhibits. ", notes: "no pets, no smoking", price: 80, user_id: @Diana.id)


@Lease1 = Lease.create!(checkin: DateTime.new(2018, 6, 22), checkout: DateTime.new(2018, 9, 22), rules: "Only 5 days stay", total_price: 300, owner_id: @Joseph.id, renter_id: @Liz.id, property_id: @Property1.id)

@Review1 = Review.create!(review_content: "Joseph was great host! I had a great time", rating: 5, reviewer_id: @Liz.id, reviewee_id: @Joseph.id, property_id: @Property1.id)
@Review2 = Review.create!(review_content: "Jospeh was a great host! I had a great time", rating: 5, reviewer_id: @Diana.id, reviewee_id: @Joseph.id, property_id: @Property2.id)
@Review3 = Review.create!(review_content: "Manuel was a great host! I had a great time", rating: 4, reviewer_id: @Liz.id, reviewee_id: @Manuel.id, property_id: @Property3.id)
@Review4 = Review.create!(review_content: "Manuel was a great host! I had a great time", rating: 4, reviewer_id: @Diana.id, reviewee_id: @Manuel.id, property_id: @Property4.id)
@Review5 = Review.create!(review_content: "Manuel was a fair host", rating: 3, reviewer_id: @Joseph.id, reviewee_id: @Manuel.id, property_id: @Property5.id)
@Review6 = Review.create!(review_content: "Diana was a great host! I had a great time", rating: 5, reviewer_id: @Joseph.id, reviewee_id: @Diana.id, property_id: @Property6.id)
@Review7 = Review.create!(review_content: "Diana was a great host! I had a great time", rating: 4, reviewer_id: @Bianca.id, reviewee_id: @Diana.id, property_id: @Property7.id)
@Review8 = Review.create!(review_content: "Lina was a fair host! I had a good time", rating: 3, reviewer_id: @Anna.id, reviewee_id: @Lina.id, property_id: @Property8.id)
@Review9 = Review.create!(review_content: "Lina was a great host! I had a great time", rating: 5, reviewer_id: @Emerson.id, reviewee_id: @Lina.id, property_id: @Property9.id)
@Review10 = Review.create!(review_content: "Joseph was a great host! I had a great time", rating: 5, reviewer_id: @Lina.id, reviewee_id: @Joseph.id, property_id: @Property10.id)
@Review11 = Review.create!(review_content: "Manuel was a great host! I had a great time", rating: 4, reviewer_id: @Bianca.id, reviewee_id: @Manuel.id, property_id: @Property11.id)
@Review12 = Review.create!(review_content: "Diana was a fair host", rating: 3, reviewer_id: @Bobby.id, reviewee_id: @Diana.id, property_id: @Property12.id)

@Message1 = Message.create!(subject: "is this still available", content: "How much will it be for a week?", sender_id: @Liz.id, recipient_id: @Joseph.id)



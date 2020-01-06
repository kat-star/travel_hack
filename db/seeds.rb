# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do 
  User.create({
    name: Faker::Name.name, 
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 100),
    email: Faker::Internet.email,
    location: Faker::Address.city,
    bio: Faker::Hipster.paragraphs(number: 1).join(' '),
    username: Faker::Internet.username,
    password: Faker::Internet.password
  })
end

destinations = [
  {city: "New York", state: "NY", country: "USA", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/flatiron-building-1160473_1920.jpg'}, 
  {city: "San Francisco", state: "CA", country: "USA", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/golden-gate-bridge-690346_1920+(1).jpg'}, 
  {city: "Los Angeles", state: "CA", country: "USA", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/tropical-2203737_1920+(1).jpg'}, 
  {city: "Paris", country: "France", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/louvre-102840_1280+(1).jpg'}, 
  {city: "London", country: "UK", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/london-1900570_1920+(1).jpg'}, 
  {city: "Tokyo", country: "Japan", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/shibuya-crossing-923000_1920+(1).jpg'}, 
  {city: "Sydney", country: "Australia", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/sydney-opera-house-164224_1280+(1).jpg'}, 
  {city: "Auckland", country: "New Zealand", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/new-zealand-73230_1920+(1).jpg'}, 
  {city: "Oakland", state: "CA", country: "USA", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/harbor-845649_1920+(1).jpg'}, 
  {city: "Cairo", country: "Egypt", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/cairo-1980350_1920.jpg'}, 
  {city: "Hong Kong", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/hong-kong-376777_1920.jpg'}, 
  {city: "Singapore", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/singapore-river-255116_1920.jpg'}, 
  {city: "Florence", country: "Italy", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/italy-4256018_1920.jpg'}, 
  {city: "Berlin", country: "Germany", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/berlin-51058_1280.jpg'}, 
  {city: "Vancouver", state: "BC", country: "Canada", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/science-world-210775_1920.jpg'}, 
  {city: "Mexico City", country: "Mexico", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/mexico-2442582_1920.jpg'}, 
  {city: "Buenos Aires", country: "Argentina", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/buenos-aires-2437858_1920.jpg'}, 
  {city: "Madrid", country: "Spain", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/madrid-2713916_1920.jpg'}, 
  {city: "Seoul", country: "South Korea", img_url: 'https://travel-hack.s3-us-west-1.amazonaws.com/nightlife-2162772_1920.jpg'}
]


destinations.length.times do |i| 
  Destination.create(destinations[i])
end

categories = ["Transportation", "Dining", "Nightlife", "Cultural", "Adventure", "Rewards/Points"]

300.times do 
  Hack.create({
    category: categories.sample,
    title: Faker::GreekPhilosophers.quote,
    content: Faker::Hipster.paragraphs(number: 3).join(' '),
    user: User.all.sample,
    destination: Destination.all.sample
  })
end

500.times do 
  Comment.create({
    content: Faker::Hipster.paragraphs(number: 1).join(' '),
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

1000.times do
  Like.create({
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

400.times do
  Follow.create({
    follower_id: User.all.sample.id,
    followed_id: User.all.sample.id
  })
end



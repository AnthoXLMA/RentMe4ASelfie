# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Creating products...'

products = Product.create([
  {
    name: 'Tony Parker',
    category: 'Sport',
    price_per_rent: 200
  },
  {
    name: 'Lamborghini',
    category: 'Car',
    price_per_rent: 50
  },
  {
    name: 'Clown',
    category: 'Diary',
    price_per_rent: 30
  },
  {
    name: 'Stomy Bugsy',
    category: 'Music',
    price_per_rent: 200
  },
  {
    name: 'Vincent Cassel',
    category: 'Celebrity',
    price_per_rent: 400
  },
  {
    name: 'Ferrari F40',
    category: 'Vehicles',
    price_per_rent: 200
  },
  {
    name: 'Ducati 40',
    category: 'Moto',
    price_per_rent: 150
  },
  {
    name: 'Britney Spears',
    category: 'Celebrity',
    price_per_rent: 230
  },
  {
    name: 'Yacht 450TDS',
    category: 'Boats',
    price_per_rent: 200
  },
  {
    name: 'Legos World',
    category: 'Games',
    price_per_rent: 400
  }
])
# products.save
# AdminUser.create!(email: 'admi@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

puts 'Finished!'

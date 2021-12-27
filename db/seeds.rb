# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Creating products...'
products = Product.new
  {
  name: 'Tony Parker',
  category: 'Sport',
  price_per_rent: 200
  }
  {
  name: 'Lamborghini',
  category: 'Car',
  price_per_rent: 50
  }
{
  name: 'Clown',
  category: 'Diary',
  price_per_rent: 30
  }
  {
  name: 'Stomy Bugsy',
  category: 'Music',
  price_per_rent: 200
  }
  { name: 'Vincent Cassel',
    category: 'Movies',
    price_per_rent: 400
  }
products.save

puts 'Finished!'
